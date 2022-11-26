cmake_minimum_required(VERSION 3.0.2)
project(LinuxProg)
find_package(Threads) # pthread 지원을 추가
set(CMAKE_BUILD_TYPE Release) # 빌드유형 지정. 여기서는 Release 모드.


include_directories(bus display gpio motor network sensor)
file(GLOB_RECURSE SOURCES "./*.cpp") # 와일드카드를 이용해서 소스파일 지정


# 라이브러리를 빌드할 때 add_library() 사용. STATIC은 정적라이브러리 (*.a)
#add_library(LinuxProg STATIC ${SOURCES})
# SHARED는 공유라이브러리 (*.so)
add_library(LinuxProg SHARED ${SOURCES}) # 생성파일이름 기반이 LinuxProg
# 타깃을 링크할 때 pthread 라이브러리를 사용하도록 지정
# library 이름은 add_library에서 지정한 것과 같아야 함
target_link_libraries(LinuxProg ${CMAKE_THREAD_LIBS_INIT})
# sudo make install 명령으로 라이브러리 설치 가능
# target library 이름은 add_library에서 지정한 것과 같아야 함
install (TARGETS LinuxProg DESTINATION /usr/lib)

