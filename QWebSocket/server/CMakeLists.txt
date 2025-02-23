cmake_minimum_required(VERSION 3.5)
project(server)

add_executable(server)
target_sources(server PRIVATE
    server.cpp
)

target_include_directories(server PRIVATE ..)

target_link_libraries(server PRIVATE
    Qt5::Core
    Qt5::WebSockets
    websocket
)
