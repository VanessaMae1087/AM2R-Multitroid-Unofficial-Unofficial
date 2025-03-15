// Overlap adjacent oFadeTiles to prevent slight flicker in certain situations.
if (oCharacter.x >= x && oCharacter.x <= (x + areax) && oCharacter.y > y && oCharacter.y <= (y + areay))
{
    timer = 2
    if (falpha > targetalpha)
    {
        falpha = max((falpha - 0.1), targetalpha)
        event_user(0)
    }
}
else if (falpha < 1 && timer <= 0)
{
    falpha = min((falpha + 0.1), 1)
    event_user(0)
}
else
    timer--
// Sync other oFadeTiles of the same layer.    
with (oFadeTiles)
{
    if (layer == other.layer)
    {
        falpha = other.falpha
        timer = other.timer
    }
}
