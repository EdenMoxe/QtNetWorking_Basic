cmake_minimum_required(VERSION 3.5)
project(client)

add_executable(client)
target_sources(client PRIVATE
    client.cpp
)

target_include_directories(client PRIVATE ..)

target_link_libraries(client PRIVATE
    Qt5::Core
    Qt5::WebSockets
    websocket
)
