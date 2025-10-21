//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/										/*Update Interval*/	/*Update Signal*/
	{" Bri: ", 	"tbr=$(cat /sys/class/backlight/intel_backlight/max_brightness);abr=$(cat /sys/class/backlight/intel_backlight/brightness);python3.12 -c \"print(int(($abr/$tbr)*100),'%',sep='')\"",	1,		0},
	{"Pow: ", 	"upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep perc | awk '{ print $2}'",	15,		0},
	{"Mem: ", 	"free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	1,		0},

	{"", "date '+%b %d (%a) %I:%M:%S%p '",					1,		0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 3;
