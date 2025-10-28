build:
	rm -rf build
	mkdir build
	cd build && cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=rv32gc-toolchain.cmake -DRISCV_TOOLCHAIN_PREFIX=/opt/riscv -DCMAKE_INSTALL_PREFIX=../install ..
	cd build && make all

clean:
	rm -rf build
