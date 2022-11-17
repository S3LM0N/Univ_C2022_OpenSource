
echo -n "Enter File or Dir"
read file
if [ -f $file ] && [ -w $file ]
then
	uptime > $file
fi
if [ ! -e $file ]
then 
	echo $file : NO EXIST
fi
if [ ! -d $file ]
then 
	echo $file : NO DIR
fi
