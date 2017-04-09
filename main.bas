#include once "src/widget.bas"
#include once "src/display.bas"

dim display as Neondragon.Dream.Display = Neondragon.Dream.Display( 640, 480, 8 )
display.set()

color 133
print test()
do
  screensync
loop while inkey$ <> chr$(27)
