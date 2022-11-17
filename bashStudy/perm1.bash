

if [ $# -eq 0 ]
then
	echo How To Use : $0 FILE*
	exit 1
fi
echo " Permission of file "
for file in $*
do
	if [ -f $file ]
	then
		fileinfo=`ls -l $file`
		perm=`echo "$fileinfo"|cut -d' ' -f1`
		echo "$perm $file"
	fi
done
