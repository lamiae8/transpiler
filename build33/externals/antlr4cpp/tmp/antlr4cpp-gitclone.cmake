
if(NOT "/home/ubuntu/Desktop/transpiler/build3/externals/antlr4cpp/src/antlr4cpp-stamp/antlr4cpp-gitinfo.txt" IS_NEWER_THAN "/home/ubuntu/Desktop/transpiler/build3/externals/antlr4cpp/src/antlr4cpp-stamp/antlr4cpp-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/home/ubuntu/Desktop/transpiler/build3/externals/antlr4cpp/src/antlr4cpp-stamp/antlr4cpp-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "/home/ubuntu/Desktop/transpiler/build3/externals/antlr4cpp/src/antlr4cpp"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/ubuntu/Desktop/transpiler/build3/externals/antlr4cpp/src/antlr4cpp'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git"  clone --no-checkout --config "advice.detachedHead=false" "https://github.com/adeharo9/antlr4-cpp-runtime" "antlr4cpp"
    WORKING_DIRECTORY "/home/ubuntu/Desktop/transpiler/build3/externals/antlr4cpp/src"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/adeharo9/antlr4-cpp-runtime'")
endif()

execute_process(
  COMMAND "/usr/bin/git"  checkout master --
  WORKING_DIRECTORY "/home/ubuntu/Desktop/transpiler/build3/externals/antlr4cpp/src/antlr4cpp"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'master'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/bin/git"  submodule update --recursive --init 
    WORKING_DIRECTORY "/home/ubuntu/Desktop/transpiler/build3/externals/antlr4cpp/src/antlr4cpp"
    RESULT_VARIABLE error_code
    )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/ubuntu/Desktop/transpiler/build3/externals/antlr4cpp/src/antlr4cpp'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/home/ubuntu/Desktop/transpiler/build3/externals/antlr4cpp/src/antlr4cpp-stamp/antlr4cpp-gitinfo.txt"
    "/home/ubuntu/Desktop/transpiler/build3/externals/antlr4cpp/src/antlr4cpp-stamp/antlr4cpp-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/home/ubuntu/Desktop/transpiler/build3/externals/antlr4cpp/src/antlr4cpp-stamp/antlr4cpp-gitclone-lastrun.txt'")
endif()

