# simple skeleton
#all: program
#
#program: cudacode.o
#    g++ -o program -L/usr/local/cuda/lib64 -lcuda -lcudart main.cpp  cudacode.o 
#
#cudacode.o:
#    nvcc -c -arch=sm_20 cudacode.cu 
#
#clean: rm -rf *o program

all: program

program: 
	nvcc julia.cu -o julia

clean: 
	rm -rf *o julia