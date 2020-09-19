CATKIN_MAKE=catkin_make

# Compiler setup
# CXX=g++-8
# CMAKE_CXX_ARG=-DCMAKE_CXX_COMPILER=$(CXX)

# CC=gcc-8
# CMAKE_CC_ARG=-DCMAKE_C_COMPILER=$(CC)

# Debug symbols for debugging with GDB
CMAKE_DEBUG_ARG=-DCMAKE_BUILD_TYPE=DEBUG

.PHONY: all first all-ignore-error debug clean

all:
	$(CATKIN_MAKE) $(CMAKE_CC_ARG) $(CMAKE_CXX_ARG)

# Sometimes it is necesary to make then clean then make again. This will do that.
first: all-ignore-error clean all

all-ignore-error:
	-$(CATKIN_MAKE)

debug:
	$(CATKIN_MAKE) $(CMAKE_CC_ARG) $(CMAKE_CXX_ARG) $(CMAKE_DEBUG_ARG)

clean:
	$(CATKIN_MAKE) clean
