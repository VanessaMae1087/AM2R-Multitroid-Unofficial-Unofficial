if (other.image_index < 2)
{
    if (frozen > 0 && other.icemissiles && (!other.smissile) && justfrozen)
        exit
    if frozen
        event_user(0)
    if ((!frozen) && other.icemissiles && (!other.smissile))
    {
        frozen = 300
        PlaySoundMono(sndFreezeHit)
        justfrozen = 1
        alarm[11] = 10
    }
}
