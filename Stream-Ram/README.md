### Simple Compilation Instructions
``` bash
gcc -O stream.c -o stream
./stream
```

### Multiprocessor Runs
``` bash
gcc -fopenmp -D_OPENMP stream.c -o stream 
export OMP_NUM_THREADS=2
./stream
```
