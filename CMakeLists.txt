cmake_minimum_required(VERSION 3.10)
project(lsp)

include_directories(${CMAKE_SOURCE_DIR}/include)
include_directories(${CMAKE_SOURCE_DIR}/src)

set(CMAKE_CXX_STANDARD 11)

file(GLOB SOURCES "src/*.cpp" "include/*.h")

add_executable(lsp ${SOURCES})

find_package(teem)

#Adding Boost program_options
set(Boost_INCLUDE_DIR /usr/local/boost_1_65_1)
set(Boost_LIBRARY_DIR /usr/local/boost_1_65_1/stage/lib)
find_package(Boost COMPONENTS program_options REQUIRED)
include_directories(${Boost_INCLUDE_DIR})
link_directories(${Boost_LIBRARY_DIR})

target_link_libraries(lsp ${Boost_LIBRARIES} teem)
