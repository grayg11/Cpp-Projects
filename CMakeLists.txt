cmake_minimum_required(VERSION 3.16.3)
project(CPPProject1)

option(BUILD_TESTS "Turn on build for tests of CPPProject1" OFF)

file(GLOB SRC_FILES
	"src/*.cpp"
)

set(INC_FILES_DIR
	include/
)

if (BUILD_TESTS)
		add_subdirectory(test)
endif()

include_directories(
	${INC_FILES_DIR}
)

add_executable(CPPProject1
	${SRC_FILES}
)
