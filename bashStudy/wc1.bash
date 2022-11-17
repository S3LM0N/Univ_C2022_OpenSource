
if [ $# -ne 1 ]
then
	echo How to use : $0 File
	exit 1
fi
file=$1
wc $file

