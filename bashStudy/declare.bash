
declare -i a #int
a=12
a=a+1
echo $a
#a=12.3 # error

declare -r b=23.4 # read only
#b=23.5 # error
