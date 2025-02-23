cmake_minimum_required(VERSION 3.5)
project(websocket)

set(CMAKE_AUTOMOC ON)

find_package(Qt5 REQUIRED
    COMPONENTS
        WebSockets
)

#输出动态库/可执行程序
if(CMAKE_BUILD_TYPE STREQUAL "Debug")
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG ${CMAKE_SOURCE_DIR}/build/debug)
elseif(CMAKE_BUILD_TYPE STREQUAL "Release")
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE ${CMAKE_SOURCE_DIR}/build/release)
endif()

#set(SOPATH ${CMAKE_SOURCE_DIR}/libs)
#set(LIBRARY_OUTPUT_PATH ${SOPATH})

add_library(${PROJECT_NAME} SHARED)
target_sources(${PROJECT_NAME} PRIVATE
    webClient.cpp
    webClient.h
    webServer.cpp
    webServer.h
)


target_include_directories(${PROJECT_NAME} PRIVATE .)
target_link_libraries(${PROJECT_NAME} PRIVATE
    Qt5::Core
    Qt5::WebSockets
)

add_subdirectory(server)
add_subdirectory(client)
