namespace Neondragon
  namespace Dream

    type Desktop extends Widget

    public:
      color as Integer

      declare constructor( x as Integer, y as Integer, w as Integer, h as Integer )
      declare constructor( byref as const Desktop )

      declare sub render
    end type

    constructor Desktop( x as Integer, y as Integer, w as Integer, h as Integer )
      Base( x, y, w, h, "Desktop" )
    end constructor

    sub Desktop.render
      dim absX as Integer = this.getAbsX
      dim absY as Integer = this.getAbsY

      LINE( absX, absY ) - ( absX + w, absY + h ), color, BF
    end sub

  end namespace
end namespace
