if(EXISTS "/home/ubuntu/Desktop/transpiler/build3/antlr4cpp/runtime/antlr4_tests[1]_tests.cmake")
  include("/home/ubuntu/Desktop/transpiler/build3/antlr4cpp/runtime/antlr4_tests[1]_tests.cmake")
else()
  add_test(antlr4_tests_NOT_BUILT antlr4_tests_NOT_BUILT)
endif()
