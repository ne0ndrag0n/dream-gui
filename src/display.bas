' Dream Widget Toolkit
#include once "src/widget.bas"

namespace Neondragon
  namespace Dream

    type Display extends Object
    private:
      screenX as Integer
      screenY as Integer
      screenDepth as Integer

      rootWidget as Widget ptr

    public:
      TEXT_WIDTH as const Integer = 8
      TEXT_HEIGHT as const Integer = 16

      declare constructor( screenX as Integer, screenY as Integer, screenDepth as Integer )
      declare sub set
      declare sub render
    end type

    constructor Display( screenX as Integer, screenY as Integer, screenDepth as Integer )
      this.screenX = screenX
      this.screenY = screenY
      this.screenDepth = screenDepth
    end constructor

    sub Display.set
      screenres this.screenX, this.screenY, this.screenDepth
      width this.screenX \ this.TEXT_WIDTH, this.screenY \ this.TEXT_HEIGHT
    end sub

    sub Display.render
      cls
      screensync
    end sub

  end namespace
end namespace
