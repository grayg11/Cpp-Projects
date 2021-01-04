CXX := g++

SRC := $(wildcard src/*.cpp)
TESTS := $(wildcard test/*.cpp)
INCL_DIR := include/

TARGET_NAME := CPPProjects
TARGET_NAME_TESTS := CPPProjects-test

$(TARGET_NAME):
	@mkdir build
	@$(CXX) -I$(INCL_DIR) $(SRC) -o build/CPPProject

$(TARGET_NAME_TESTS):
	@mkdir build/test
	@$(CXX) $(TESTS) -o build/test/CPPProject-test

clean:
	@rm -r -f build && rm -r -f build/test
