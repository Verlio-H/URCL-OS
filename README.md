# URCL-OS
An operating system written in URCL

URCL Discord: https://discord.gg/jWRr2vx

Documentation: https://docs.google.com/document/d/198c6bRHksSWcJmYO9DyLMjdQEmyZZScl63dXBU-Y-DE/edit?usp=sharing

# Linking
URCL-OS now makes use of urcl-ld to combine the various modules into a complete urcl program.

urclos3.urcl contains a prelinked version of URCL-OS

to create a functional URCL-OS build, one file from each subdirectory of src must be linked together

to use the pre-configured targets use make. (eg. make iris.urcl)

Current pre-configured targets:

| Target | Command | Additional Requirements |
| ------ | ------- | ----------------------- |
| 16 bit arch using storage ports & serial io| make urclos3.urcl | none |
| IRIS redstone computer | make iris.urcl | gnu-sed |
| High performance graphical device | make virtterm.urcl | run keyboard.sh, URCL implementation supports %KEY |
