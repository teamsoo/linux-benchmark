for HOST in `cat hosts.list`;
do
   echo $HOST
   ssh $HOST -t "stress-ng --cpu 16 --cpu-method matrixprod  --metrics-brief -t 30 > stress-ng.log" &
done

wait
echo all processes complete
