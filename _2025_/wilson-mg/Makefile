.SUFFIXES:
.SUFFIXES: .o .c

#============================================================

C_SOURCES = 
C_OBJS    = 
C_INCLUDES  = generic_vector.h verbosity.h
#C_LIBS    = -lm -larpack
C_LIBS     = -lm
EXAMPLES = wilson_mg
C_EXAMPLES_OBJ = wilson_mg.o

QUANTUM_LINALG_DIR=./quantum-linalg/
QUANTUM_MG_DIR=./quantum-mg/
EIGEN_DIR=/root/eigen-3.4.0/

CCX = g++
#CXXFLAGS = -O2 -g -Wall -std=c++11 -I../../ -I../../quantum-linalg/ -I../../quantum-mg/ -I/home/weinbe2/Data/bin/Eigen/ -L/home/weinbe2/Data/bin/arpack/install/lib -DQLINALG_TEMPLATING -funroll-loops
CXXFLAGS = -O2 -g -Wall -std=c++11 -I../../ -I${QUANTUM_LINALG_DIR} -I${QUANTUM_MG_DIR} -I${EIGEN_DIR} -DQLINALG_TEMPLATING -funroll-loops -DNO_ARPACK


#  = -DHAVE_CONFIG_H -I   -g -O2  -MT
# -g -O2  $(INC)

#============================================================

all: $(EXAMPLES)

# There are no dependent files!
#%.o:%.cpp       $(INCLUDES)
#	$(CCX) -c  $(CXXFLAGS) $(C_SOURCES)
#
#square_laplace : square_laplace.o $(C_OBJS)
#	$(CCX) $@.cpp $(CXXFLAGS)  -o $@ $(C_OBJS) $(C_LIBS)


%.o:%.cpp	$(INCLUDES)
	$(CCX) -c  $(CXXFLAGS) $(*:=.cpp)

wilson_mg :  $(C_OBJS)
	$(CCX) $@.cpp $(CXXFLAGS)  -o $@ $(C_OBJS) $(C_LIBS)

#============================================================

ALL_SOURCES = Makefile $(C_SOURCES) $(INCLUDES) $(EXAMPLES)

clean: 
	rm -f $(TARGET) $(C_OBJS) $(EXAMPLES) $(C_EXAMPLES_OBJ)

TAGS:	$(ALL_SOURCES)
	etags $(ALL_SOURCES)

tar: $(ALL_SOURCES) 
	tar cvf $(TARGET).tar $(ALL_SOURCES) 

ps: $(ALL SOURCES)
	enscript -pcode.ps $(ALL_SOURCES)


