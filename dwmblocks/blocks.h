//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/										/*Update Interval*/	/*Update Signal*/
	{" Pow: ", 	"upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep perc | awk '{print $2}'",	30,		0},
	{"Mem: ", 	" free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	1,		0},

	{"", "date '+%b %d (%a) %I:%M:%S%p '",					1,		0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 3;
