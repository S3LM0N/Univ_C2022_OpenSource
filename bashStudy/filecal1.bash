

if [ -e $1 ]
then # $file exist
	wc $1
else # $file not exist
	echo "file not exist"
fi
