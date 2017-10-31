output: pipeline.o
	g++ pipeline.o -o output

pipeline: pipeline.cpp 
	g++ -c pipeline.cpp

clean: 
	rm *.o output
