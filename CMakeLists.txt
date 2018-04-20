cmake_minimum_required(VERSION 3.6)
project(lsp)

include_directories(${CMAKE_SOURCE_DIR}/include)
include_directories(${CMAKE_SOURCE_DIR}/src)

set(CMAKE_CXX_STANDARD 11)

file(GLOB SOURCES "src/*.cpp" "include/*.h" "include/*.hpp")

add_executable(lsp ${SOURCES})

find_package(teem)

find_package(LibXml2)
include_directories(${LIBXML2_INCLUDE_DIR})

target_link_libraries(lsp teem ${LIBXML2_LIBRARIES})
