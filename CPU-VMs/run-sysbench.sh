for HOST in `cat hosts.list`;
do
   echo $HOST
   ssh $HOST -t "sysbench --test=cpu --cpu-max-prime=20000 --num-threads=16 run > sysbench.out" &
done

wait
echo all processes complete
