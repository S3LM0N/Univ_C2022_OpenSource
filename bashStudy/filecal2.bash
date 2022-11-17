

if [ -d $1 ]
then
	echo -n num of file and subdirs in $1
	ls $1 | wc -l
else
echo $1\: not dir
fi
