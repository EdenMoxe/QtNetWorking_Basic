cmake_minimum_required(VERSION 3.5)
project(client)

set(EXECUTABLE_OUTPUT_PATH ${SOPATH})
add_executable(${PROJECT_NAME})

target_sources(${PROJECT_NAME} PRIVATE client.cpp)
target_include_directories(${PROJECT_NAME} PRIVATE ..)
target_link_libraries(${PROJECT_NAME} PRIVATE
    Qt5::Core
    Qt5::Network
    tcp         #our dll
)
