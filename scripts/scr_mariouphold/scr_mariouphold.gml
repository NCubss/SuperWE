function scr_mariouphold() {
if (global.player == 0)
{
    switch global.powerup
    {
        case 0:
            return spr_mario_small_up_hold;
        case 1:
            return spr_mario_big_up_hold;
        case 2:
            return spr_mario_fire_up_hold;
        case 3:
            return spr_mario_big_up_hold;
        case -82:
            return spr_mario_pballon_idle;
    }

}
else if (global.player == 1)
{
    switch global.powerup
    {
        case 0:
            return spr_luigi_small_up_hold;
        case 1:
            return spr_luigi_big_up_hold;
        case 2:
            return spr_luigi_fire_up_hold;
        case 3:
            return spr_luigi_big_up_hold;
        case -82:
            return spr_luigi_pballon_idle;
    }

}
else if (global.player == 2)
{
    switch global.powerup
    {
        case 0:
            return spr_toad_small_hold_up;
        case 1:
            return spr_toad_big_up_hold;
        case 2:
            return spr_toad_fire_up_hold;
        case 3:
            return spr_toad_big_up_hold;
        case -82:
            return spr_toad_pballon_idle;
    }

}
else if (global.player == 3)
{
    switch global.powerup
    {
        case 0:
            return spr_toadette_small_hold_up;
        case 1:
            return spr_toadette_big_up_hold;
        case 2:
            return spr_toadette_fire_up_hold;
        case 3:
            return spr_toadette_big_up_hold;
        case -82:
            return spr_toadette_pballon_idle;
    }

}
}