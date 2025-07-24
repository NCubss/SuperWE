image_speed = 0
ready = 0
omitir = 0
alarm[0] = 30
date = 0
alpha = 0
day = "DOMINGO"
if (current_day == 24 && current_month == 12)
    day = lang().calendar.christmas
else if (current_day == 1 && current_month == 1)
    day = lang().calendar.new_year
else
{
    switch current_weekday
    {
        case 0:
            day = lang().calendar.sunday
            break
        case 1:
            day = lang().calendar.monday
            break
        case 2:
            day = lang().calendar.tuesday
            break
        case 3:
            day = lang().calendar.wednesday
            break
        case 4:
            day = lang().calendar.thursday
            break
        case 5:
            day = lang().calendar.friday
            break
        case 6:
            day = lang().calendar.saturday
            break
    }

}
