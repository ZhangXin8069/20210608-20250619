TARGET:=libqcu.so
LIB:=libqcu.so
INCLUDE:=${HOME}/external-libraries/pyquda/include/qcu
SRC:=qcu_cuda.cu
FLAGS:=-arch=sm_70 -O3 --maxrregcount=256  # -g -G
INSTALL_DIR:=../../lib

${LIB}: ${SRC}
	nvcc -shared -Xcompiler -fPIC -o ${LIB} ${SRC} -I${INCLUDE} ${FLAGS}

debug: ${SRC} test.cu
	nvcc -o debug ${SRC} test.cu -I${INCLUDE} ${FLAGS} -G -g

.PHONY: install clean

install:
	cp ${TARGET} ${INSTALL_DIR}/
clean:
	-rm ${TARGET}
