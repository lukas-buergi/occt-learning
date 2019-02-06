COMPILE = g++ -c -v -g -Wall
LINK = g++ -v
# You may need to change the definition of GNUROOT
GNUROOT = /usr/lib/x86_64-linux-gnu
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
         -lTKOffset
GNULIBS =  $(GNUROOT)/libQtGui.so.4 \
           $(GNUROOT)/libQtCore.so.4

tutorial : tutorial.o
	$(LINK) -o $@ tutorial.o $(OCLIBS) $(GNULIBS)

tutorial.o : tutorial.cpp
	$(COMPILE) -o $@ $(INCLUDE) -std=gnu++11 tutorial.cpp
