%encoding iso
%import gfx2
%import math
%import syslib
%import diskio
%import sprites


main {
    const ubyte SPRITE_DATA_BANK = 1
    const uword SPRITE_DATA_ADDR = $2000
    const ubyte SPRITE_PAL_OFFSET = 1

    sub start() {
        void diskio.vload("face.bin",SPRITE_DATA_BANK,SPRITE_DATA_ADDR)
        void diskio.vload("FACEPAL.BIN",1,$fa20)

        sprites.init(1,SPRITE_DATA_BANK,SPRITE_DATA_ADDR,sprites.SIZE_16, sprites.SIZE_16, sprites.COLORS_256,SPRITE_PAL_OFFSET);
        
        sprites.show(1)
        sprites.pos(1,100,100)
        repeat {
           
         
        
            sys.waitvsync()
         
        }

      
    }

}
