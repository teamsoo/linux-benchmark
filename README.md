Sertis Benchmark Tools
======

> Common benchmark tools

### CPU-X
gathers information on CPU, motherboard and more.
``` bash
./CPU-X/CPU-X_v3.1.3_portable_noGTK.linux64
```

### BenchMark
programs that used to benchmark CPU, Disk, Memory, Network (untested)
``` bash
cd ./BenchMark/CPU
javac cpu.java
java cpu
```

### Parallelism-Benchmark
calculates the product of two 1500x1500 matrix
``` bash
cd ./Parallelism-Benchmark
chmod 500 benchmark.out
./benchmark.out
```

### SysBench
SysBench runs a specified number of threads and they all execute requests in parallel. The actual workload produced by requests depends on the specified test mode. You can limit either the total number of requests or the total time for the benchmark, or both.
``` bash
sudo apt-get install -y sysbench
sysbench --test=cpu --cpu-max-prime=20000 --num-threads=8 run
```

### Stress-ng
stress-ng will stress test a computer system in various selectable ways. It was designed to exercise various physical subsystems of a computer as well as the various operating system kernel interfaces.
``` bash
sudo apt-get install -y stress-ng
stress-ng --cpu 8 --cpu-method matrixprod  --metrics-brief -t 30
```

### iperf3
The TCP, UDP and SCTP network bandwidth measurement tool
``` bash
sudo apt install iperf3
or 
sudo add-apt-repository "ppa:patrickdk/general-lucid"
sudo apt-get update
sudo apt-get install -y iperf3

# Start Server 
iperf3 -s

# Connect to Server
iperf3 -c server_ip
```