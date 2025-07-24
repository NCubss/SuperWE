function scr_marioride() {
if (global.player == 0)
{
    switch global.powerup
    {
        case 0:
            return spr_mario_small_yoshi;
        case 1:
            return spr_mario_big_yoshi;
        case 2:
            return spr_mario_fire_yoshi;
        case 3:
            return spr_mario_big_yoshi;
        case -82:
            return spr_mario_pballon_idle;
    }

}
else if (global.player == 1)
{
    switch global.powerup
    {
        case 0:
            return spr_luigi_small_yoshi;
        case 1:
            return spr_luigi_big_yoshi;
        case 2:
            return spr_luigi_fire_yoshi;
        case 3:
            return spr_luigi_big_yoshi;
        case -82:
            return spr_luigi_pballon_idle;
    }

}
else if (global.player == 2)
{
    switch global.powerup
    {
        case 0:
            return spr_toad_small_yoshi;
        case 1:
            return spr_toad_big_yoshi;
        case 2:
            return spr_toad_fire_yoshi;
        case 3:
            return spr_toad_big_yoshi;
        case -82:
            return spr_toad_pballon_idle;
    }

}
else if (global.player == 3)
{
    switch global.powerup
    {
        case 0:
            return spr_toadette_small_yoshi;
        case 1:
            return spr_toadette_big_yoshi;
        case 2:
            return spr_toadette_fire_yoshi;
        case 3:
            return spr_toadette_big_yoshi;
        case -82:
            return spr_toadette_pballon_idle;
    }

}
}
