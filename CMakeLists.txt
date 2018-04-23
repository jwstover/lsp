cmake_minimum_required(VERSION 3.6)
project(lsp)

include_directories(${CMAKE_SOURCE_DIR}/include)
include_directories(${CMAKE_SOURCE_DIR}/src)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

file(GLOB SOURCES "include/*.h" "include/*.hpp" "src/*.cpp")

add_executable(lsp ${SOURCES})

find_package(Teem)
include_directories(${Teem_INCLUDE_DIRS})

find_package(LibXml2)
include_directories(${LIBXML2_INCLUDE_DIR})

target_link_libraries(lsp ${Teem_LIBRARIES} ${LIBXML2_LIBRARIES})
