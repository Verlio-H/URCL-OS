build/os.urcl: src/boot.urcl src/vm/vm_proc.urcl src/mem/mem_base.urcl src/fs/fs_common.urcl src/fs/fs_kernel.urcl src/io/io_base.urcl
	mkdir build
	urcl-ld -o $@ $^

all: build/os.urcl

clean:
	rm -rf build

.PHONY: all clean
