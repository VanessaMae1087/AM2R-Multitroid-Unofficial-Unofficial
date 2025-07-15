targetalpha = 0
falpha = 1
areax = 16 * image_xscale
areay = 16 * image_yscale
if (oCharacter.x >= x && oCharacter.x <= (x + areax) && oCharacter.y > y && oCharacter.y <= (y + areay))
    falpha = 0
layer = -120
timer = 0
