# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/ravi1/OneDrive/Documents/Projects/Types

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/ravi1/OneDrive/Documents/Projects/Types

# Include any dependencies generated for this target.
include Types/CMakeFiles/Types.dir/depend.make

# Include the progress variables for this target.
include Types/CMakeFiles/Types.dir/progress.make

# Include the compile flags for this target's objects.
include Types/CMakeFiles/Types.dir/flags.make

Types/CMakeFiles/Types.dir/source/Types/types.cpp.o: Types/CMakeFiles/Types.dir/flags.make
Types/CMakeFiles/Types.dir/source/Types/types.cpp.o: Types/source/Types/types.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/ravi1/OneDrive/Documents/Projects/Types/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Types/CMakeFiles/Types.dir/source/Types/types.cpp.o"
	cd /mnt/c/Users/ravi1/OneDrive/Documents/Projects/Types/Types && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Types.dir/source/Types/types.cpp.o -c /mnt/c/Users/ravi1/OneDrive/Documents/Projects/Types/Types/source/Types/types.cpp

Types/CMakeFiles/Types.dir/source/Types/types.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Types.dir/source/Types/types.cpp.i"
	cd /mnt/c/Users/ravi1/OneDrive/Documents/Projects/Types/Types && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/ravi1/OneDrive/Documents/Projects/Types/Types/source/Types/types.cpp > CMakeFiles/Types.dir/source/Types/types.cpp.i

Types/CMakeFiles/Types.dir/source/Types/types.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Types.dir/source/Types/types.cpp.s"
	cd /mnt/c/Users/ravi1/OneDrive/Documents/Projects/Types/Types && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/ravi1/OneDrive/Documents/Projects/Types/Types/source/Types/types.cpp -o CMakeFiles/Types.dir/source/Types/types.cpp.s

# Object files for target Types
Types_OBJECTS = \
"CMakeFiles/Types.dir/source/Types/types.cpp.o"

# External object files for target Types
Types_EXTERNAL_OBJECTS =

lib/libTypes.a: Types/CMakeFiles/Types.dir/source/Types/types.cpp.o
lib/libTypes.a: Types/CMakeFiles/Types.dir/build.make
lib/libTypes.a: Types/CMakeFiles/Types.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/ravi1/OneDrive/Documents/Projects/Types/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../lib/libTypes.a"
	cd /mnt/c/Users/ravi1/OneDrive/Documents/Projects/Types/Types && $(CMAKE_COMMAND) -P CMakeFiles/Types.dir/cmake_clean_target.cmake
	cd /mnt/c/Users/ravi1/OneDrive/Documents/Projects/Types/Types && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Types.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Types/CMakeFiles/Types.dir/build: lib/libTypes.a

.PHONY : Types/CMakeFiles/Types.dir/build

Types/CMakeFiles/Types.dir/clean:
	cd /mnt/c/Users/ravi1/OneDrive/Documents/Projects/Types/Types && $(CMAKE_COMMAND) -P CMakeFiles/Types.dir/cmake_clean.cmake
.PHONY : Types/CMakeFiles/Types.dir/clean

Types/CMakeFiles/Types.dir/depend:
	cd /mnt/c/Users/ravi1/OneDrive/Documents/Projects/Types && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/ravi1/OneDrive/Documents/Projects/Types /mnt/c/Users/ravi1/OneDrive/Documents/Projects/Types/Types /mnt/c/Users/ravi1/OneDrive/Documents/Projects/Types /mnt/c/Users/ravi1/OneDrive/Documents/Projects/Types/Types /mnt/c/Users/ravi1/OneDrive/Documents/Projects/Types/Types/CMakeFiles/Types.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Types/CMakeFiles/Types.dir/depend

