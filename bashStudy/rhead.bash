
cd $1
for file in *
do
	if [ -f $file ]
	then
		echo "======== $file ========"
		head $file
	fi
	if [ -d $file ]
	then
		/home/ccc1004200/rhead.bash $file
	fi
done
