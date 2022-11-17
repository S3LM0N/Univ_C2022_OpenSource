
if (( $# != 1 ))
then
	echo How To Use: $0 FILE
	exit 1
fi
file=$1
wc $1
