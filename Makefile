CC = g++
#OPT = -O3 -m32
#OPT = -g -m32
OPT = -g  
WARN = -Wall
CFLAGS = $(OPT) $(WARN) 

# List all your .cc files here (source files, excluding header files)
SIM_SRC = sim_cache.cc cache.cc process.cc LRU.cc FIFO.cc pLRU.cc

# List corresponding compiled object files here (.o files)
SIM_OBJ = sim_cache.o cache.o process.o LRU.o FIFO.o pLRU.o
 
#################################

# default rule

all: sim_cache
	@echo "my work is done here..."


# rule for making sim_cache
sim_cache: $(SIM_OBJ)
	$(CC) -o sim_cache $(CFLAGS) $(SIM_OBJ) -lm
	@echo "-----------DONE WITH SIM_CACHE-----------"


# generic rule for converting any .cc file to any .o file
.cc.o:
	$(CC) $(CFLAGS)  -c $*.cc


# type "make clean" to remove all .o files plus the sim_cache binary
clean:
	rm -f *.o sim_cache


# type "make clobber" to remove all .o files (leaves sim_cache binary)
clobber:
	rm -f *.o

