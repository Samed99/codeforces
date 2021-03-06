CC_FILES = $(wildcard src/*.cpp)
BIN_FILES = $(notdir $(CC_FILES:.cpp=))
CC_FLAGS = -std=c++11 -Wall -O2 -lm
CC = g++

all: $(BIN_FILES)

$(BIN_FILES): %: src/%.cpp
	$(CC) $(CC_FLAGS) -o $@ $<

clean:
	rm -f $(BIN_FILES)
