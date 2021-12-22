SRC := $(wildcard *.c)
define \n 


endef

Native:$(SRC)
	$(foreach x, $(SRC), gcc $(x) -o $(x).exe${\n})
