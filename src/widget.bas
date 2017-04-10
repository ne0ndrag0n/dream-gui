' Dream Widget Toolkit

namespace Neondragon
  namespace Dream

    type Widget extends Object
    protected:
      name as String
      children( 100 ) as Widget ptr

    public:
      parent as Widget ptr
      zPrev as Widget ptr
      zNext as Widget ptr

      x as Integer
      y as Integer
      w as Integer
      h as Integer

      declare constructor( x as Integer, y as Integer, w as Integer, h as Integer, name as String )
      declare virtual destructor
      declare function getName as String
      declare virtual sub render
    end type

    constructor Widget( x as Integer, y as Integer, w as Integer, h as Integer, name as String )
      this.x = x
      this.y = y

      this.w = w
      this.h = h

      this.name = name
    end constructor

    destructor Widget
      ' nothing
    end destructor

    function Widget.getName as String
      return this.name
    end function

    sub Widget.render
      ' Abstract!!
    end sub

  end namespace
end namespace
