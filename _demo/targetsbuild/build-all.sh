#!/bin/bash

# Initialize arrays to store results
successful_targets=()
failed_targets=()

for target in \
adafruit-esp32-feather-v2 \
ae-rp2040 \
arduino-leonardo \
arduino-mega1280 \
arduino-mega2560 \
arduino-mkr1000 \
arduino-mkrwifi1010 \
arduino-nano-new \
arduino-nano \
arduino-nano33 \
arduino-zero \
arduino \
atmega1280 \
atmega1284p \
atmega2560 \
atmega328p \
atmega328pb \
atmega32u4 \
atsamd21e18a \
atsamd21g18a \
atsamd51g19a \
atsamd51j19a \
atsamd51j20a \
atsamd51p19a \
atsamd51p20a \
atsame51j19a \
atsame54-xpro \
atsame54p20a \
attiny1616 \
attiny85 \
avr \
avrtiny \
badger2040-w \
badger2040 \
bluemicro840 \
bluepill-clone \
bluepill \
btt-skr-pico \
challenger-rp2040 \
circuitplay-bluefruit \
circuitplay-express \
clue-alpha \
clue \
cortex-m-qemu \
cortex-m \
cortex-m0 \
cortex-m0plus \
cortex-m3 \
cortex-m33 \
cortex-m4 \
cortex-m7 \
d1mini \
digispark \
elecrow-rp2040 \
elecrow-rp2350 \
esp-c3-32s-kit \
esp32-c3-devkit-rust-1 \
esp32-coreboard-v2 \
esp32-mini32 \
esp32 \
esp32c3-12f \
esp32c3-supermini \
esp32c3 \
esp8266 \
fe310 \
feather-m0-express \
feather-m0 \
feather-m4-can \
feather-m4 \
feather-nrf52840-sense \
feather-nrf52840 \
feather-rp2040 \
feather-stm32f405 \
gameboy-advance \
gemma-m0 \
gnse \
gobadge \
gopher-badge \
gopherbot \
gopherbot2 \
grandcentral-m4 \
hifive1b \
hw-651-s110v8 \
hw-651 \
itsybitsy-m0 \
itsybitsy-m4 \
itsybitsy-nrf52840 \
k210 \
kb2040 \
lgt92 \
lorae5 \
m5paper \
m5stack-core2 \
m5stack \
m5stamp-c3 \
m5stick-c \
macropad-rp2040 \
maixbit \
makerfabs-esp32c3spi35 \
matrixportal-m4 \
mch2022 \
mdbt50qrx-uf2 \
metro-m4-airlift \
microbit-s110v8 \
microbit-v2-s113v7 \
microbit-v2-s140v7 \
microbit-v2 \
microbit \
mksnanov3 \
nano-33-ble-s140v6-uf2 \
nano-33-ble-s140v7-uf2 \
nano-33-ble-s140v7 \
nano-33-ble \
nano-rp2040 \
nicenano \
nintendoswitch \
nodemcu \
nrf51-s110v8 \
nrf51 \
nrf52-s132v6 \
nrf52 \
nrf52833-s113v7 \
nrf52833-s140v7 \
nrf52833 \
nrf52840-mdk-usb-dongle \
nrf52840-mdk \
nrf52840-s140v6-uf2-generic \
nrf52840-s140v6-uf2 \
nrf52840-s140v7-uf2 \
nrf52840-s140v7 \
nrf52840 \
nucleo-f103rb \
nucleo-f722ze \
nucleo-l031k6 \
nucleo-l432kc \
nucleo-l476rg \
nucleo-l552ze \
nucleo-wl55jc \
p1am-100 \
particle-3rd-gen \
particle-argon \
particle-boron \
particle-xenon \
pca10031 \
pca10040-s132v6 \
pca10040 \
pca10056-s140v6-uf2 \
pca10056-s140v7 \
pca10056 \
pca10059-s140v7 \
pca10059 \
pga2350 \
pico-plus2 \
pico-w \
pico \
pico2-w \
pico2 \
pinetime \
pybadge \
pygamer \
pyportal \
qtpy-esp32c3 \
qtpy-rp2040 \
qtpy \
rak4631 \
reelboard-s140v7 \
reelboard \
riscv-qemu \
riscv \
riscv32 \
riscv64 \
rp2040 \
rp2350 \
rp2350b \
simavr \
stm32f469disco \
stm32f4disco-1 \
stm32f4disco \
stm32l0x2 \
stm32wl5x_cm4 \
stm32wle5 \
swan \
teensy36 \
teensy40 \
teensy41 \
thingplus-rp2040 \
thumby \
tiny2350 \
tkey \
trinket-m0 \
trinkey-qt2040 \
tufty2040 \
wasi \
wasip1 \
wasip2 \
wasm-unknown \
wasm \
waveshare-rp2040-tiny \
waveshare-rp2040-zero \
wioterminal \
x9pro \
xiao-ble \
xiao-esp32c3 \
xiao-rp2040 \
xiao \
xtensa; do
	output=$(../../llgo.sh build -v -target $target -o hello.out . 2>&1)
	if [ $? -eq 0 ]; then
		echo ✅ $target `file hello.out`
		successful_targets+=("$target")
	else
		echo ❌ $target
		echo "$output"
		failed_targets+=("$target")
	fi
done

echo ""
echo "----------------------------------------"

# Output successful targets
echo "Successful targets (${#successful_targets[@]} total):"
for target in "${successful_targets[@]}"; do
	echo "$target"
done

echo ""
echo "Failed targets (${#failed_targets[@]} total):"
for target in "${failed_targets[@]}"; do
	echo "$target"
done
