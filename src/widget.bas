' Dream Widget Toolkit

namespace Neondragon
  namespace Dream

    type Widget extends Object
    protected:
      name as String
      children( 100 ) as Widget ptr

    public:
      parent as Widget ptr

      declare constructor
      declare virtual destructor
      declare function getName as String
    end type

    constructor Widget
      ' nothing
    end constructor

    destructor Widget
      ' nothing
    end destructor

    function Widget.getName as String
      return this.name
    end function

  end namespace
end namespace

function test() as String
  return "test"
end function
