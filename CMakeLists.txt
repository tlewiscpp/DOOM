cmake_minimum_required(VERSION 3.1)
set(LANGUAGE "C")

project(DOOM ${LANGUAGE})

set (IPX_DRIVER_DIR ipx)
set (SOUND_DRIVER_DIR sndserv)
set (NETWORK_DRIVER_DIR sersrc)

#add_subdirectory(${SOUND_DRIVER_DIR})
#add_subdirectory(${IPX_DRIVER_DIR})
#add_subdirectory(${NETWORK_DRIVER_DIR})

if (NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif()

set(CMAKE_C_FLAGS "-Wall -Wextra -Wpedantic -DNORMALUNIX -DLINUX")
set(CMAKE_C_FLAGS_DEBUG "-g")
set(CMAKE_C_FLAGS_RELEASE "-O3")

set(CMAKE_CXX_FLAGS "-Wall -Wextra -Wpedantic -DNORMALUNIX -DLINUX")
set(CMAKE_CXX_FLAGS_DEBUG "-g")
set(CMAKE_CXX_FLAGS_RELEASE "-O3")

set(COVERAGE_LINK_FLAGS  "")
set(CMAKE_EXE_LINKER_FLAGS  "${CMAKE_EXE_LINKER_FLAGS} ${COVERAGE_LINK_FLAGS}")

message(STATUS "PROJECT_NAME = ${PROJECT_NAME}")

set (${PROJECT_NAME}_SOURCE_FILES
    linuxdoom-1.10/am_map.c
    linuxdoom-1.10/d_items.c
    linuxdoom-1.10/d_main.c
    linuxdoom-1.10/d_net.c
    linuxdoom-1.10/doomdef.c
    linuxdoom-1.10/doomstat.c
    linuxdoom-1.10/dstrings.c
    linuxdoom-1.10/f_finale.c
    linuxdoom-1.10/f_wipe.c
    linuxdoom-1.10/g_game.c
    linuxdoom-1.10/hu_lib.c
    linuxdoom-1.10/hu_stuff.c
    linuxdoom-1.10/i_main.c
    linuxdoom-1.10/i_net.c
    linuxdoom-1.10/info.c
    linuxdoom-1.10/i_sound.c
    linuxdoom-1.10/i_system.c
    linuxdoom-1.10/i_video.c
    linuxdoom-1.10/m_argv.c
    linuxdoom-1.10/m_bbox.c
    linuxdoom-1.10/m_cheat.c
    linuxdoom-1.10/m_fixed.c
    linuxdoom-1.10/m_menu.c
    linuxdoom-1.10/m_misc.c
    linuxdoom-1.10/m_random.c
    linuxdoom-1.10/m_swap.c
    linuxdoom-1.10/p_ceilng.c
    linuxdoom-1.10/p_doors.c
    linuxdoom-1.10/p_enemy.c
    linuxdoom-1.10/p_floor.c
    linuxdoom-1.10/p_inter.c
    linuxdoom-1.10/p_lights.c
    linuxdoom-1.10/p_map.c
    linuxdoom-1.10/p_maputl.c
    linuxdoom-1.10/p_mobj.c
    linuxdoom-1.10/p_plats.c
    linuxdoom-1.10/p_pspr.c
    linuxdoom-1.10/p_saveg.c
    linuxdoom-1.10/p_setup.c
    linuxdoom-1.10/p_sight.c
    linuxdoom-1.10/p_spec.c
    linuxdoom-1.10/p_switch.c
    linuxdoom-1.10/p_telept.c
    linuxdoom-1.10/p_tick.c
    linuxdoom-1.10/p_user.c
    linuxdoom-1.10/r_bsp.c
    linuxdoom-1.10/r_data.c
    linuxdoom-1.10/r_draw.c
    linuxdoom-1.10/r_main.c
    linuxdoom-1.10/r_plane.c
    linuxdoom-1.10/r_segs.c
    linuxdoom-1.10/r_sky.c
    linuxdoom-1.10/r_things.c
    linuxdoom-1.10/sounds.c
    linuxdoom-1.10/s_sound.c
    linuxdoom-1.10/st_lib.c
    linuxdoom-1.10/st_stuff.c
    linuxdoom-1.10/tables.c
    linuxdoom-1.10/v_video.c
    linuxdoom-1.10/wi_stuff.c
    linuxdoom-1.10/w_wad.c
    linuxdoom-1.10/z_zone.c)

set (${PROJECT_NAME}_HEADER_FILES
    linuxdoom-1.10/am_map.h
    linuxdoom-1.10/d_englsh.h
    linuxdoom-1.10/d_event.h
    linuxdoom-1.10/d_french.h
    linuxdoom-1.10/d_items.h
    linuxdoom-1.10/d_main.h
    linuxdoom-1.10/d_net.h
    linuxdoom-1.10/doomdata.h
    linuxdoom-1.10/doomdef.h
    linuxdoom-1.10/doomstat.h
    linuxdoom-1.10/doomtype.h
    linuxdoom-1.10/d_player.h
    linuxdoom-1.10/dstrings.h
    linuxdoom-1.10/d_textur.h
    linuxdoom-1.10/d_think.h
    linuxdoom-1.10/d_ticcmd.h
    linuxdoom-1.10/f_finale.h
    linuxdoom-1.10/f_wipe.h
    linuxdoom-1.10/g_game.h
    linuxdoom-1.10/hu_lib.h
    linuxdoom-1.10/hu_stuff.h
    linuxdoom-1.10/i_net.h
    linuxdoom-1.10/info.h
    linuxdoom-1.10/i_sound.h
    linuxdoom-1.10/i_system.h
    linuxdoom-1.10/i_video.h
    linuxdoom-1.10/m_argv.h
    linuxdoom-1.10/m_bbox.h
    linuxdoom-1.10/m_cheat.h
    linuxdoom-1.10/m_fixed.h
    linuxdoom-1.10/m_menu.h
    linuxdoom-1.10/m_misc.h
    linuxdoom-1.10/m_random.h
    linuxdoom-1.10/m_swap.h
    linuxdoom-1.10/p_inter.h
    linuxdoom-1.10/p_local.h
    linuxdoom-1.10/p_mobj.h
    linuxdoom-1.10/p_pspr.h
    linuxdoom-1.10/p_saveg.h
    linuxdoom-1.10/p_setup.h
    linuxdoom-1.10/p_spec.h
    linuxdoom-1.10/p_tick.h
    linuxdoom-1.10/r_bsp.h
    linuxdoom-1.10/r_data.h
    linuxdoom-1.10/r_defs.h
    linuxdoom-1.10/r_draw.h
    linuxdoom-1.10/r_local.h
    linuxdoom-1.10/r_main.h
    linuxdoom-1.10/r_plane.h
    linuxdoom-1.10/r_segs.h
    linuxdoom-1.10/r_sky.h
    linuxdoom-1.10/r_state.h
    linuxdoom-1.10/r_things.h
    linuxdoom-1.10/sounds.h
    linuxdoom-1.10/s_sound.h
    linuxdoom-1.10/st_lib.h
    linuxdoom-1.10/st_stuff.h
    linuxdoom-1.10/tables.h
    linuxdoom-1.10/v_video.h
    linuxdoom-1.10/wi_stuff.h
    linuxdoom-1.10/w_wad.h
    linuxdoom-1.10/z_zone.h)

message (STATUS "SOURCE_FILES = ${${PROJECT_NAME}_SOURCE_FILES}")

add_executable(${PROJECT_NAME} 
    ${${PROJECT_NAME}_SOURCE_FILES} 
    ${${PROJECT_NAME}_HEADER_FILES})

target_link_libraries(${PROJECT_NAME}
        Xext
        X11
        nsl
        m)

target_include_directories(${PROJECT_NAME}
    PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}
        PUBLIC linuxdoom-1.10
        PUBLIC sndserv)


set_source_files_properties(${${PROJECT_NAME}_SOURCE_FILES} PROPERTIES LINKER_LANGUAGE ${LANGUAGE})
set_target_properties(${PROJECT_NAME} PROPERTIES LINKER_LANGUAGE ${LANGUAGE})

