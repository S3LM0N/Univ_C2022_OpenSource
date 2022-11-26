cmake_minimum_required(VERSION 3.0.2)
project (TestLibrary)
#For the shared library:
set ( PROJECT_LINK_LIBS libLinuxProg.so )
# 라이브러리파일 libLinuxProg.so가 있는 디렉터리
link_directories( ~/library_test/lib_build )
# 헤더파일 test_lib.h가 있는 디렉터리
include_directories(~/library_test)
add_executable(libtest test.cpp)
target_link_libraries(libtest ${PROJECT_LINK_LIBS} ) 
