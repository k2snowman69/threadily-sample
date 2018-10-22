# Useful methods or functions
include ./shared-makefile/shared-cli.mk

.PHONY: all
all: sample_objects_cpp_test sample_objects_js_test

.PHONY: threadily
threadily:
	cd ./threadily $(CmdSeparator) $(Make)
	
.PHONY: sample_objects_cpp
sample_objects_cpp: threadily
	cd ./threadily-sample-cpp $(CmdSeparator) $(Make)
	
.PHONY: sample_objects_js
sample_objects_js: sample_objects_cpp
	cd ./threadily-sample-js $(CmdSeparator) $(Make)
	
.PHONY: sample_objects_js_test
sample_objects_js_test: sample_objects_js
	cd ./threadily-sample-js-test $(CmdSeparator) $(Make)
	
.PHONY: sample_objects_cpp_test
sample_objects_cpp_test: sample_objects_cpp
	cd ./threadily-sample-cpp-test $(CmdSeparator) $(Make)

.PHONY: test
test: sample_objects_js_test sample_objects_cpp_test
	cd ./threadily-sample-cpp-test $(CmdSeparator) $(Make) test
	cd ./threadily-sample-js-test $(CmdSeparator) $(Make) test

.PHONY: clean
clean:
	cd $(call FixPath,./threadily) $(CmdSeparator) $(Make) clean
	cd $(call FixPath,./threadily-sample-cpp) $(CmdSeparator) $(Make) clean
	cd $(call FixPath,./threadily-sample-cpp-test) $(CmdSeparator) $(Make) clean
	cd $(call FixPath,./threadily-sample-js) $(CmdSeparator) $(Make) clean
	cd $(call FixPath,./threadily-sample-js-test) $(CmdSeparator) $(Make) clean

.PHONY: clean-hard
clean-hard:
	cd $(call FixPath,./threadily) $(CmdSeparator) $(Make) clean
	cd $(call FixPath,./threadily-sample-cpp) $(CmdSeparator) $(Make) clean
	cd $(call FixPath,./threadily-sample-cpp-test) $(CmdSeparator) $(Make) clean
	cd $(call FixPath,./threadily-sample-js) $(CmdSeparator) $(Make) clean-hard
	cd $(call FixPath,./threadily-sample-js-test) $(CmdSeparator) $(Make) clean-hard