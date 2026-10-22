"""Forward RSP to QEMU, translating only OpenOCD's `reset halt` monitor command.

This is a simulator adapter, not an OpenOCD or physical flash implementation.
Memory writes and debugger execution are handled by the real QEMU GDB stub.
"""

import argparse
import json
import select
import socket


def packet(payload):
    return b"$" + payload + b"#" + f"{sum(payload) & 255:02x}".encode()


def translate(payload, log):
    if payload.startswith(b"qRcmd,"):
        command = bytes.fromhex(payload[6:].decode()).decode()
        if command == "reset halt":
            log.write(json.dumps({"event": "reset"}) + "\n")
            log.flush()
            return b"qRcmd," + b"system_reset".hex().encode()
    if payload[:1] in (b"M", b"X"):
        address, size = payload[1:].split(b":", 1)[0].split(b",", 1)
        log.write(json.dumps({"event": "write", "address": int(address, 16),
                              "bytes": int(size, 16)}) + "\n")
        log.flush()
    return payload


def forward(client, upstream, first, log):
    pending = first
    while True:
        # RSP escapes reserved bytes, so a literal '#' terminates the payload.
        while pending:
            if pending[:1] != b"$":
                upstream.sendall(pending[:1])
                pending = pending[1:]
                continue
            end = pending.find(b"#")
            if end < 0 or len(pending) < end + 3:
                break
            payload = pending[1:end]
            rewritten = translate(payload, log)
            upstream.sendall(packet(rewritten) if rewritten != payload else pending[:end + 3])
            pending = pending[end + 3:]
        readable, _, _ = select.select([client, upstream], [], [], 30)
        if not readable:
            raise TimeoutError("debugger/QEMU session inactive for 30 seconds")
        for source in readable:
            data = source.recv(65536)
            if not data:
                return
            if source is client:
                pending += data
            else:
                client.sendall(data)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--listen", type=int, required=True)
    parser.add_argument("--qemu", type=int, required=True)
    parser.add_argument("--log", required=True)
    args = parser.parse_args()
    with socket.socket() as listener, open(args.log, "w", encoding="utf-8") as log:
        listener.bind(("127.0.0.1", args.listen))
        listener.listen()
        while True:
            with listener.accept()[0] as client:
                first = client.recv(65536)
                if not first:
                    raise RuntimeError("debugger disconnected without sending RSP")
                with socket.create_connection(("127.0.0.1", args.qemu), timeout=10) as upstream:
                    upstream.settimeout(None)
                    forward(client, upstream, first, log)
                return


if __name__ == "__main__":
    main()
