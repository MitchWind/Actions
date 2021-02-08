grep '^CONFIG_KERNEL_' $1 | while read line
do
	name=`echo $line | awk -F '[=]' '{print $1}' |sed -r 's/CONFIG_//g'`
	echo "config $name" >> $2
	echo "  default n" >> $2
	echo "" >> $2
done
