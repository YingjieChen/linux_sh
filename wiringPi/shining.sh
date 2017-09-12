i=0
while true
do
	sleep 1;
	i=$((($i+1)%2))
	gpio write 15 $i
done
