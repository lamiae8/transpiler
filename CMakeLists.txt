# minimum required CMAKE version
CMAKE_MINIMUM_REQUIRED(VERSION 3.5)

LIST( APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake )

# compiler must be 11 or 14
SET (CMAKE_CXX_STANDARD 14)

# set variable pointing to the antlr tool that supports C++
set(ANTLR4CPP_JAR_LOCATION /usr/local/lib/antlr-4.7.1-complete.jar)
# add external build for antlrcpp
include( ExternalAntlr4Cpp )

# add antrl4cpp artifacts to project environment
include_directories( ${ANTLR4CPP_INCLUDE_DIRS} )
include_directories( grammar/include )
link_directories( ${ANTLR4CPP_LIBS}
				  ${PROJECT_SOURCE_DIR} )


message(STATUS "Found antlr4cpp libs: ${ANTLR4CPP_LIBS} and includes: ${ANTLR4CPP_INCLUDE_DIRS} ")


# Call macro to add lexer and grammar to your build dependencies.
 antlr4cpp_process_grammar(demo antlrcpptest
  ${CMAKE_CURRENT_SOURCE_DIR}/grammar/ALFA.g4
  ${CMAKE_CURRENT_SOURCE_DIR}/grammar/ALFA.g4)
# include generated files in project environment
include_directories(${antlr4cpp_include_dirs_antlrcpptest})

file(GLOB SOURCES ${SOURCES} "grammar/src/*")
# add generated grammar to demo binary target
add_executable(AlfaToSol main.cpp ${antlr4cpp_src_files_antlrcpptest} ${SOURCES})
add_dependencies(AlfaToSol antlr4cpp antlr4cpp_generation_antlrcpptest)
target_link_libraries(AlfaToSol antlr4-runtime)
