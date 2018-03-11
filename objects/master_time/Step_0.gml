second += 1;

if (second >= 60) {
	minute += 1;
	second = 0;
}

if (minute >= 60) {
	hour += 1;
	minute = 0;
}

if (hour >= 23) {
	day += 1;
	hour = 0;
}

if (day >= 30) {
	month += 1;
	day = 1;
}

if (month >= 12) {
	year += 1;
	month = 1;
}

show_debug_message("FPS = " + string(fps));
show_debug_message("time: "+string(second)+"s "+string(minute)+"m "+string(hour)+"h "+string(day)+"d "+string(month)+"mnth "+string(year)+"yr");