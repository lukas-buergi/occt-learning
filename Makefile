CASROOT = /usr/include/occt
INCLUDE = -I$(CASROOT)
OCLIBS = -L$(CASROOT) \
	-lTKernel \
	-lTKMath \
	-lTKBRep \
	-lTKGeomBase \
	-lTKG3d \
	-lTKG2d \
	-lTKTopAlgo \
	-lTKPrim \
	-lTKBO \
	-lTKFillet \
	-lTKOffset \
	-lTKSTL
GNUROOT = /usr/lib/x86_64-linux-gnu
LIBS = $(OCLIBS) \
	$(GNUROOT)/libQtGui.so.4 \
	$(GNUROOT)/libQtCore.so.4

main : main.o
	g++ -v -o $@ main.o $(LIBS)

main.o : main.cpp
	g++ -c -v -g -Wall -o $@ $(INCLUDE) -std=gnu++11 main.cpp
