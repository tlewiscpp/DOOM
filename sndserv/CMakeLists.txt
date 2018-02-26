cmake_minimum_required(VERSION 3.1)
set (PROJECT_NAME sndserv)
project(${PROJECT_NAME} C)


set (SOURCE_ROOT .)

if (NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif()

set(CMAKE_C_FLAGS "-Wall -Wextra -Wpedantic -Werror -DNORMALUNIX -DLINUX")
set(CMAKE_C_FLAGS_DEBUG "-g")
set(CMAKE_C_FLAGS_RELEASE "-O3")
set(COVERAGE_LINK_FLAGS  "")
set(CMAKE_EXE_LINKER_FLAGS  "${CMAKE_EXE_LINKER_FLAGS} ${COVERAGE_LINK_FLAGS}")

set (${PROJECT_NAME}_SOURCE_FILES
        ${SOURCE_ROOT}/linux.c
        ${SOURCE_ROOT}/sounds.c
        ${SOURCE_ROOT}/soundsrv.c
        ${SOURCE_ROOT}/wadread.c)

set (${PROJECT_NAME}_HEADER_FILES
        ${SOURCE_ROOT}/sounds.h
        ${SOURCE_ROOT}/soundsrv.h
        ${SOURCE_ROOT}/soundst.h
        ${SOURCE_ROOT}/wadread.h)

add_library(${PROJECT_NAME} STATIC
    ${${PROJECT_NAME}_SOURCE_FILES} 
    ${${PROJECT_NAME}_HEADER_FILES})

target_link_libraries(${PROJECT_NAME} m)

target_include_directories(${PROJECT_NAME}
    PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

set_target_properties(${PROJECT_NAME} PROPERTIES LINKER_LANGUAGE C)
