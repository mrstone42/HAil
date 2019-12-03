# change VBR max percent from average bitrate
writeb 0x04136E94 0xA0

# set 3840x2160 to VBR mode (VBR = 0x03, CBR = 0x01)
writeb 0x044CAF74 0x03

# set bitrate for 3840x2160 (MUST BE < 0x03E80000)
writel 0x044CAF54 0x03E7FFFF

# [WORKS] set 3840x2160 to N = 1
writel 0x044CAF70 0x00000001

# [WORKS] change VBR max percent from average bitrate
writeb 0x04136E94 0xA0

# [WORKS] set 3840x2160 (29.97 fps) to VBR mode (VBR = 0x03, CBR = 0x01)
writeb 0x044CAF20 0x03

# [WORKS] set bitrate for 3840x2160 (29.97 fps) (MUST BE < 0x03E80000)
writel 0x044CAF00 0x03E7FFFF

# [WORKS] set 3840x2160 (29.97 fps) to N = 1
writel 0x044CAF1C 0x00000001

# change VBR max percent from average bitrate
writeb 0x04136E94 0xA0

# set 4096x2160 to VBR mode (VBR = 0x03, CBR = 0x01)
writeb 0x044CB7A8 0x03

# set bitrate for 4096x2160 (MUST BE < 0x03E80000)
writel 0x044CB788 0x03E7FFFF

# set 4096x2160 to N = 1 (GOP size 1 => Intra frames only)
writel 0x044CB7A4 0x00000001

# change record type (0 - none, 1 - h264, 2 - mjpeg)
writeb 0x044CC9FC 0x02
writeb 0x044CC9FD 0x02
