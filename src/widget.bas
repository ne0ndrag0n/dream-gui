' Dream Widget Toolkit

namespace Neondragon
  namespace Dream

    type Widget extends Object
    protected:
      name as String
      children( 100 ) as Widget ptr
      x as Integer
      y as Integer
      w as Integer
      h as Integer

    public:
      parent as Widget ptr

      declare constructor( x as Integer, y as Integer, w as Integer, h as Integer, name as String )
      declare virtual destructor
      declare function getName as String
      declare abstract sub render

      declare function getAbsX as Integer
      declare function getAbsY as Integer
    end type

    constructor Widget( x as Integer, y as Integer, w as Integer, h as Integer, name as String )
      this.x = x
      this.y = y

      this.w = w
      this.h = h

      this.name = name
    end constructor

    destructor Widget
      dim i as Integer

      for i = 0 to 100
        if children( i ) <> 0 then
          delete children( i )
        end if
      next i
    end destructor

    function Widget.getName as String
      return this.name
    end function

    function Widget.getAbsX as Integer
      if parent = 0 then
        return x
      end if

      return parent->getAbsX + x
    end function

    function Widget.getAbsY as Integer
      if parent = 0 then
        return y
      end if

      return parent->getAbsY + y
    end function

    '----------------
    type WidgetZOrder
      widget as Widget ptr
      prv as WidgetZOrder ptr
      nxt as WidgetZOrder ptr
      children as WidgetZOrder ptr

      declare static sub renderZOrder( zOrder as WidgetZOrder ptr )
    end type

    sub WidgetZOrder.renderZOrder( zOrder as WidgetZOrder ptr )
      zOrder->widget->render

      dim current as WidgetZOrder ptr = zOrder->children
      while current <> 0
        renderZOrder current
        current = current->nxt
      wend

      if zOrder->nxt <> 0 then
        renderZOrder zOrder->nxt
      end if
    end sub

  end namespace
end namespace
