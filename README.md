# PIMLC-Simulator

This is the simulator to verify the functionality of PIMLC. We can compare the output of the simulator and verilator to test the functionality of our PIMLC.


## Usage
cd benchmarks
./validate.sh -b benchmarkname -r recursivetimes(random mode) -i inputtestdata(input mode)
- Simualtor
In the simulator, the input and output is given in the order of:
```
x0,x1,x2,...,xn
y0,y1,y2,...,ym
```

- Verilator
In verilator test files, the input should be given in the following order:
```
[x[k],...,x[3],x[2],x[1],x[0]] => [xn,xn-1,...,x4,x3,x2,x1,x0]
[y[l],...,y[3],y[2],y[1],y[0]] => [ym,ym-1,...,y4,y3,y2,y1,y0]
```
Each x[i] and y[i] is several bits(unsigned int, unsigned short, unsigned char, ...).

- outputfile
the outputfile gives the input and output data in the order of
```
x0,x1,x2,...,xn
y0,y1,y2,...,ym
```