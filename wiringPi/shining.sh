i=0
gpio mode 15 OUT;
gpio mode 16 OUT;
gpio mode 1 OUT;
gpio write 16 1;
while true
do
	sleep 0.1;
	i=$((($i+1)%2))
	gpio write 15 $i
done
