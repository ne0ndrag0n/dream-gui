#include once "src/widget.bas"
#include once "src/display.bas"
#include once "src/window.bas"
#include once "src/color.bas"

dim display as Neondragon.Dream.Display = Neondragon.Dream.Display( 640, 480, 16 )
display.set()

do
  display.render()
loop while inkey$ <> chr$(27)
