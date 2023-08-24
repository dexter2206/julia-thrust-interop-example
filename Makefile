LIB_DIR := lib
SRC_DIR := src

$(LIB_DIR)/thrust_wrapper.o: $(SRC_DIR)/thrust_wrapper.cu $(LIB_DIR)
	CPATH="$CPATH:./vendor/thrust:./vendor/libcudacxx/include" nvcc --allow-unsupported-compiler -Xcompiler -fPIC -shared -o $(LIB_DIR)/thrust_wrapper.so $(SRC_DIR)/thrust_wrapper.cu

$(LIB_DIR):
	mkdir -p $(LIB_DIR)

.PHONY: clean
clean:
	rm -Rf $(LIB_DIR)
