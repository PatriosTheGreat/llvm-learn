FLAGS := -DSMALL_INPUT -ffast-math
EXE := geo-distance
OBJS := helper.o main.o
%.o: %.cpp
    $(CXX) $(FLAGS) -c $^
$(EXE): $(OBJS)
    $(CXX) $(FLAGS) $< -o $@