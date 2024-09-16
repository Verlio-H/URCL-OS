
#ideal for simple device with seriel console supporting storage ports
urclos3.urcl:
	urcl-ld -o urclos3.urcl src/init/stdinit.urcl src/base/stdbase.urcl src/io/stdio.urcl src/fs/silkfs.urcl src/mem/stdmem.urcl

#made for iris redstone computer
iris.urcl:
	urcl-ld -o urclos3.urcl --ascii -ri PSH HPSH -ri POP HPOP -ri CAL HCAL -ri RET HRET src/init/irisinit.urcl src/base/stdbase.urcl src/io/irisio.urcl src/mem/stdmem.urcl src/fs/silkfs.urcl
	sed -z -e 's/OUT %ADDR \+\(0\?x\?b\?o\?R\?[0-9]\+\)\nIN R\([0-9]\+\) %BUS/LLOD R\2 \1 M2048/g' -e 's/OUT %ADDR \+\(0\?x\?b\?o\?R\?[0-9]\+\)\nOUT %BUS \+\(0\?x\?b\?o\?R\?[0-9]\+\)/LSTR \1 M2048 \2/g' -i urclos3.urcl