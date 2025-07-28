build:
	rm -rf build
	rm -rf install
	mkdir build
	cd build && cmake -DCMAKE_TOOLCHAIN_FILE=rv32gc-toolchain.cmake -DRISCV_TOOLCHAIN_PREFIX=/opt/riscv -DCMAKE_INSTALL_PREFIX=../install ..
	cd build && make all
	cd build && make install

clean:
	rm -rf build
	rm -rf install
