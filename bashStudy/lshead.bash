
lshead() {

	echo "Start Fnc, Param $1"
	date
	echo "List first 3 files in dir $1"
	ls -l $1 | head -4
}

echo "Hello"
lshead /tmp
exit 0
