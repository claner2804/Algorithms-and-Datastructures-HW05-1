CXX = g++
CXXFLAGS = -Wall -std=c++11

all: sort

sort: main.o bubble_sort.o
	$(CXX) $(CXXFLAGS) -o sort main.o bubble_sort.o

main.o: main.cpp bubble_sort.h
	$(CXX) $(CXXFLAGS) -c main.cpp

bubble_sort.o: bubble_sort.cpp bubble_sort.h
	$(CXX) $(CXXFLAGS) -c bubble_sort.cpp

clean:
	rm -f *.o sort
