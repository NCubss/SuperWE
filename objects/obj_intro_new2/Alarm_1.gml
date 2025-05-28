/// @description	Start animators for each letter
if (letters_i == 7) exit;
animator(ac_logo_intro, 0, id, "letters_y", -128, 46, 90, Accessor.ARRAY, letters_i);
letters_i++;
alarm[1] = 5;