if canbehit
{
    if hitmissile
    {
        event_user(0)
        with (other.id)
            event_user(0)
    }
    else if ((other.object_index == oMissile || other.object_index == oMissileExpl) && global.icemissiles && (!other.smissile))
    {
        frz = instance_create(x, y, oEnemyFrozen)
        frz.image_xscale = facing
        frz.sprite_index = frozenspr
        frz.image_index = image_index
        frz.mask_index = frozenspr
        frz.image_angle = image_angle
        frz.xVel = hspeed
        frz.yVel = vspeed
        frz.depth = 10
        frz.falling = freezefall
        frz.xSprite = sprite_index
        frz.xLastFrame = image_index
        frz.xLastFacing = image_xscale
        frz.xLastAngle = image_angle
        frz.xLastDepth = depth
        frz.xLastXPos = xstart
        frz.xLastYPos = ystart
        frz.xLastEnemy = object_index
        frz.canbeX = canbeX
        frz.timer = timer
        frz.rotspeed = rotspeed
        frz.myspeed = myspeed
        frz.offset = offset
        frz.moveratio = moveratio
        frz.movesteps = movesteps
        PlaySoundMono(sndFreezeHit)
        instance_destroy()
        with (other.id)
            event_user(0)
    }
    else
    {
        with (other.id)
            event_user(1)
    }
    if (myhealth <= 0 && frozen)
    {
        enemy_death_frozen()
        global.kills += 1
    }
}
shaking = 30
direction = other.direction
speed = 2
