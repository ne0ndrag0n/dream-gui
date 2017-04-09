screenres 640, 480
width 640 \ 8, 480 \ 16
color 133
print "test"
do
  screensync
loop while inkey$ <> chr$(27)
