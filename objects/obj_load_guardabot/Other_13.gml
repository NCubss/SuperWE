if (global.style == 0)
{
    if instance_exists(obj_ground3)
    {
        if (global.theme == "castle")
            instance_create((obj_ground3.x + 16), (obj_ground3.y - 16), obj_axe_smw)
        else if (global.theme != "castle") 
        {
            instance_create((obj_ground3.x + 4), (obj_ground3.y - 176), obj_flagpole)
            instance_create((obj_ground3.x + 80), (obj_ground3.y - 48), obj_SMB_castle)
        }
    }
}
else if (global.style == 1)
{
    if instance_exists(obj_ground3)
    {
        if (global.theme == "castle")
            instance_create((obj_ground3.x + 16), (obj_ground3.y - 16), obj_axe_smw)
        else if (global.theme != "castle") && (!instance_exists(obj_goalcard))
            instance_create(obj_ground3.x, (obj_ground3.y - 64), obj_goalcard)
    }
}
else if (global.style == 2)
{
    if instance_exists(obj_ground3)
    {
        if (global.theme == "castle")
            instance_create((obj_ground3.x + 16), (obj_ground3.y - 16), obj_axe_smw)
        else if (global.theme != "castle")
            instance_create(obj_ground3.x, (obj_ground3.y - 137), obj_goalgate)
    }
}
else if (global.style == 3)
{
    if instance_exists(obj_ground3)
    {
        if (global.theme == "castle")
            instance_create((obj_ground3.x + 16), (obj_ground3.y - 16), obj_axe_smw)
        else if (global.theme != "castle")
        {
            instance_create((obj_ground3.x + 8), (obj_ground3.y - 170), obj_flagpole)
            instance_create((obj_ground3.x + 80), (obj_ground3.y - 48), obj_SMB_castle)
        }
    }
}