' Dream Widget Toolkit
#include once "src/widget.bas"
#include once "src/color.bas"

namespace Neondragon
  namespace Dream

    type Window extends Widget
    public:
      title as String
      frame as Boolean

      declare constructor( x as Integer, y as Integer, w as Integer, h as Integer, title as String )
      declare constructor( byref as const Window )
      declare sub render
    end type

    constructor Window( x as Integer, y as Integer, w as Integer, h as Integer, title as String )
      Base( x, y, w, h, "Window" )

      this.title = title
    end constructor

    sub Window.render
      if frame = true then
        LINE ( x, y )-( x + w, y + h ), Colors.index( 6 ), B
      end if
    end sub

  end namespace
end namespace
