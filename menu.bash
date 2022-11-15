
echo List of Orders

cat << MENU
  d : date
  l : ls
  w : who
  q : quit
MENU
stop=0
while (($stop == 0))
do
	echo -n '?'
	read reply
	case $reply in
		"d") date;;
		"l") ls;;
		"w") who;;
		"q") stop=1;;
		*) echo Wrong Input;;
	esac
done

