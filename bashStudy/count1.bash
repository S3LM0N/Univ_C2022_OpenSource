
if [ $# -eq 0 ]
then
	dir="."
else
	dir=$1
fi

echo -n number of files and subdir inside $dir :
ls $dir | wc -l
