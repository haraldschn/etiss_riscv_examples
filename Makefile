build:
	rm -rf build
	rm -rf install
	mkdir build
	cd build && cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=rv32gc-toolchain.cmake -DRISCV_TOOLCHAIN_PREFIX=/opt/riscv -DCMAKE_INSTALL_PREFIX=../install ..
	cd build && make all
	cd build && make install

run: ./install/bin/add_asm
	spike -l --isa=RV32IMA -m0x10000000:0x10000000,0x80000000:0x80000000 ./install/bin/add_asm

clean:
	rm -rf build
	rm -rf install
