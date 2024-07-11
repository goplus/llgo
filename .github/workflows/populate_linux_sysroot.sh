#!/bin/bash

set -e

TMPDIR="$(mktemp -d)"
export TMPDIR
trap 'rm -rf "${TMPDIR}"' EXIT

LINUX_AMD64_PREFIX=.sysroot/linux/amd64
LINUX_ARM64_PREFIX=.sysroot/linux/arm64
mkdir -p "${LINUX_AMD64_PREFIX}" "${LINUX_ARM64_PREFIX}"

POPULATE_LINUX_SYSROOT_SCRIPT="$(mktemp)"
cat > "${POPULATE_LINUX_SYSROOT_SCRIPT}" << EOF
#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install -y lsb-release gnupg2 wget rsync

echo "deb http://apt.llvm.org/\$(lsb_release -cs)/ llvm-toolchain-\$(lsb_release -cs)-18 main" | tee /etc/apt/sources.list.d/llvm.list
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -
apt-get update
apt-get install -y llvm-18-dev

error() {
	echo -e "\$1" >&2
	exit 1
}

exclude_list=()
include_list=()

exclude_list+=(--exclude "/bin")
exclude_list+=(--exclude "/boot")
exclude_list+=(--exclude "/boot*")
exclude_list+=(--exclude "/dev")
exclude_list+=(--exclude "/etc")
exclude_list+=(--exclude "/home")
exclude_list+=(--exclude "/lib/dhcpd")
exclude_list+=(--exclude "/lib/firmware")
exclude_list+=(--exclude "/lib/hdparm")
exclude_list+=(--exclude "/lib/ifupdown")
exclude_list+=(--exclude "/lib/modules")
exclude_list+=(--exclude "/lib/modprobe.d")
exclude_list+=(--exclude "/lib/modules-load.d")
exclude_list+=(--exclude "/lib/resolvconf")
exclude_list+=(--exclude "/lib/startpar")
exclude_list+=(--exclude "/lib/systemd")
exclude_list+=(--exclude "/lib/terminfo")
exclude_list+=(--exclude "/lib/udev")
exclude_list+=(--exclude "/lib/xtables")
exclude_list+=(--exclude "/lib/ssl/private")
exclude_list+=(--exclude "/lost+found")
exclude_list+=(--exclude "/media")
exclude_list+=(--exclude "/mnt")
exclude_list+=(--exclude "/proc")
exclude_list+=(--exclude "/root")
exclude_list+=(--exclude "/run")
exclude_list+=(--exclude "/sbin")
exclude_list+=(--exclude "/srv")
exclude_list+=(--exclude "/sys")
exclude_list+=(--exclude "/tmp")
exclude_list+=(--exclude "/usr/bin")
exclude_list+=(--exclude "/usr/games")
exclude_list+=(--exclude "/usr/sbin")
exclude_list+=(--exclude "/usr/share")
exclude_list+=(--exclude "/usr/src")
exclude_list+=(--exclude "/usr/local/bin")
exclude_list+=(--exclude "/usr/local/etc")
exclude_list+=(--exclude "/usr/local/games")
exclude_list+=(--exclude "/usr/local/man")
exclude_list+=(--exclude "/usr/local/sbin")
exclude_list+=(--exclude "/usr/local/share")
exclude_list+=(--exclude "/usr/local/src")
exclude_list+=(--exclude "/usr/lib/ssl/private")
exclude_list+=(--exclude "/var")
exclude_list+=(--exclude "/snap")
exclude_list+=(--exclude "*python*")

include_list+=(--include "*.a")
include_list+=(--include "*.so")
include_list+=(--include "*.so.*")
include_list+=(--include "*.h")
include_list+=(--include "*.hh")
include_list+=(--include "*.hpp")
include_list+=(--include "*.hxx")
include_list+=(--include "*.pc")
include_list+=(--include "*.def")
include_list+=(--include "*.inc")
include_list+=(--include "/lib")
include_list+=(--include "/lib32")
include_list+=(--include "/lib64")
include_list+=(--include "/libx32")
include_list+=(--include "*/")

do-sync() {
	from=\$1
	to=\$2

	args=()
	args+=(-a)
	args+=(-z)
	args+=(-m)
	args+=(-d)
	args+=(-h)
	args+=(--keep-dirlinks)
	args+=("--info=progress2")
	args+=(--delete)
	args+=(--prune-empty-dirs)
	args+=(--sparse)
	args+=(--links)
	args+=(--copy-unsafe-links)
	args+=("\${exclude_list[@]}")
	args+=("\${include_list[@]}")
	args+=(--exclude "*")
	args+=("\${from}")
	args+=("\${to}")

	echo "\${args[@]}"
	rsync "\${args[@]}"

	exit \$?
}

do-sync / /sysroot/
EOF
chmod +x "${POPULATE_LINUX_SYSROOT_SCRIPT}"

populate_linux_sysroot() {
	local ARCH="$1"
	local PREFIX="$2"
	docker run \
		--rm \
		--platform "linux/${ARCH}" \
		-v "$(pwd)/${PREFIX}":/sysroot \
		-v "${POPULATE_LINUX_SYSROOT_SCRIPT}":/populate_linux_sysroot.sh \
		debian:bullseye \
		/populate_linux_sysroot.sh
}
populate_linux_sysroot amd64 "${LINUX_AMD64_PREFIX}"
populate_linux_sysroot arm64 "${LINUX_ARM64_PREFIX}"
