cmake_minimum_required(VERSION 3.5)
project(tcp)

set(CMAKE_AUTOMOC ON)

find_package(Qt5 REQUIRED
    COMPONENTS
    Network #for tcp
)

#输出动态库/可执行程序
if(CMAKE_BUILD_TYPE STREQUAL "Debug")
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG ${CMAKE_SOURCE_DIR}/build/debug)
elseif(CMAKE_BUILD_TYPE STREQUAL "Release")
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE ${CMAKE_SOURCE_DIR}/build/release)
endif()


#set(SOPATH ${CMAKE_SOURCE_DIR}/libs)
#set(LIBRARY_OUTPUT_PATH ${SOPATH})

# 动态库设计代码
add_library(${PROJECT_NAME} SHARED)

target_sources(${PROJECT_NAME} PRIVATE
    clientSocket.h
    clientSocket.cpp
    serverSocket.h
    serverSocket.cpp
)

target_include_directories(${PROJECT_NAME} PRIVATE .)
target_link_libraries(${PROJECT_NAME} PRIVATE
    Qt5::Core
    Qt5::Network
)

# 执行程序
add_subdirectory(client)
add_subdirectory(server)
