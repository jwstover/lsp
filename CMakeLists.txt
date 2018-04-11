cmake_minimum_required(VERSION 3.10)
project(Anim)

include_directories(${CMAKE_SOURCE_DIR}/include)
include_directories(${CMAKE_SOURCE_DIR}/src)

set(CMAKE_CXX_STANDARD 11)

set(Teem_DIR ${CMAKE_SOURCE_DIR}/teem)

add_subdirectory(teem)

file(GLOB SOURCES "src/*.cpp" "include/*.h")

add_executable(Anim ${SOURCES})
set(Boost_USE_STATIC_LIBS        ON)
set(Boost_USE_MULTITHREADED      ON)
set(Boost_USE_STATIC_RUNTIME    OFF)

find_package(Boost 1.66.0 COMPONENTS program_options)
include_directories(${Boost_INCLUDE_DIRS})
target_link_libraries(Anim ${Boost_LIBRARIES} teem)
