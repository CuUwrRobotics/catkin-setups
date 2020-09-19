CATKIN_MAKE=catkin_make

# Compiler setup
# CXX=g++-8
# CMAKE_CXX_ARG=-DCMAKE_CXX_COMPILER=$(CXX)

# CC=gcc-8
# CMAKE_CC_ARG=-DCMAKE_C_COMPILER=$(CC)

# Debug symbols for debugging with GDB
CMAKE_DEBUG_ARG=-DCMAKE_BUILD_TYPE=DEBUG

all:
	$(CATKIN_MAKE) $(CMAKE_CC_ARG) $(CMAKE_CXX_ARG)

first:
	-$(CATKIN_MAKE) $(CMAKE_CC_ARG) $(CMAKE_CXX_ARG)
	$(CATKIN_MAKE) clean
	$(CATKIN_MAKE) $(CMAKE_CC_ARG) $(CMAKE_CXX_ARG)

debug:
	$(CATKIN_MAKE) $(CMAKE_CC_ARG) $(CMAKE_CXX_ARG) $(CMAKE_DEBUG_ARG)

clean:
	$(CATKIN_MAKE) clean
