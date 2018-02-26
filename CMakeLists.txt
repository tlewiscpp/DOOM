cmake_minimum_required(VERSION 3.1)
set (PROJECT_NAME DOOM)
project(${PROJECT_NAME} C)


set (IPX_DRIVER_DIR ipx)
set (SOUND_DRIVER_DIR sndserv)
set (NETWORK_DRIVER_DIR sersrc)

add_subdirectory(${SOUND_DRIVER_DIR})
#add_subdirectory(${IPX_DRIVER_DIR})
#add_subdirectory(${NETWORK_DRIVER_DIR})

set (SOURCE_ROOT linuxdoom-1.10)

if (NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif()

set(CMAKE_CXX_FLAGS "-Wall -Wextra -Wpedantic -Werror -DNORMALUNIX -DLINUX")
set(CMAKE_CXX_FLAGS_DEBUG "-g")
set(CMAKE_CXX_FLAGS_RELEASE "-O3")
set(COVERAGE_LINK_FLAGS  "")
set(CMAKE_EXE_LINKER_FLAGS  "${CMAKE_EXE_LINKER_FLAGS} ${COVERAGE_LINK_FLAGS}")

set (${PROJECT_NAME}_SOURCE_FILES
    ${SOURCE_ROOT}/am_map.c
    ${SOURCE_ROOT}/d_items.c
    ${SOURCE_ROOT}/d_main.c
    ${SOURCE_ROOT}/d_net.c
    ${SOURCE_ROOT}/doomdef.c
    ${SOURCE_ROOT}/doomstat.c
    ${SOURCE_ROOT}/dstrings.c
    ${SOURCE_ROOT}/f_finale.c
    ${SOURCE_ROOT}/f_wipe.c
    ${SOURCE_ROOT}/g_game.c
    ${SOURCE_ROOT}/hu_lib.c
    ${SOURCE_ROOT}/hu_stuff.c
    ${SOURCE_ROOT}/i_main.c
    ${SOURCE_ROOT}/i_net.c
    ${SOURCE_ROOT}/info.c
    ${SOURCE_ROOT}/i_sound.c
    ${SOURCE_ROOT}/i_system.c
    ${SOURCE_ROOT}/i_video.c
    ${SOURCE_ROOT}/m_argv.c
    ${SOURCE_ROOT}/m_bbox.c
    ${SOURCE_ROOT}/m_cheat.c
    ${SOURCE_ROOT}/m_fixed.c
    ${SOURCE_ROOT}/m_menu.c
    ${SOURCE_ROOT}/m_misc.c
    ${SOURCE_ROOT}/m_random.c
    ${SOURCE_ROOT}/m_swap.c
    ${SOURCE_ROOT}/p_ceilng.c
    ${SOURCE_ROOT}/p_doors.c
    ${SOURCE_ROOT}/p_enemy.c
    ${SOURCE_ROOT}/p_floor.c
    ${SOURCE_ROOT}/p_inter.c
    ${SOURCE_ROOT}/p_lights.c
    ${SOURCE_ROOT}/p_map.c
    ${SOURCE_ROOT}/p_maputl.c
    ${SOURCE_ROOT}/p_mobj.c
    ${SOURCE_ROOT}/p_plats.c
    ${SOURCE_ROOT}/p_pspr.c
    ${SOURCE_ROOT}/p_saveg.c
    ${SOURCE_ROOT}/p_setup.c
    ${SOURCE_ROOT}/p_sight.c
    ${SOURCE_ROOT}/p_spec.c
    ${SOURCE_ROOT}/p_switch.c
    ${SOURCE_ROOT}/p_telept.c
    ${SOURCE_ROOT}/p_tick.c
    ${SOURCE_ROOT}/p_user.c
    ${SOURCE_ROOT}/r_bsp.c
    ${SOURCE_ROOT}/r_data.c
    ${SOURCE_ROOT}/r_draw.c
    ${SOURCE_ROOT}/r_main.c
    ${SOURCE_ROOT}/r_plane.c
    ${SOURCE_ROOT}/r_segs.c
    ${SOURCE_ROOT}/r_sky.c
    ${SOURCE_ROOT}/r_things.c
    ${SOURCE_ROOT}/sounds.c
    ${SOURCE_ROOT}/s_sound.c
    ${SOURCE_ROOT}/st_lib.c
    ${SOURCE_ROOT}/st_stuff.c
    ${SOURCE_ROOT}/tables.c
    ${SOURCE_ROOT}/v_video.c
    ${SOURCE_ROOT}/wi_stuff.c
    ${SOURCE_ROOT}/w_wad.c
    ${SOURCE_ROOT}/z_zone.c)

set (${PROJECT_NAME}_HEADER_FILES
    ${SOURCE_ROOT}/am_map.h
    ${SOURCE_ROOT}/d_englsh.h
    ${SOURCE_ROOT}/d_event.h
    ${SOURCE_ROOT}/d_french.h
    ${SOURCE_ROOT}/d_items.h
    ${SOURCE_ROOT}/d_main.h
    ${SOURCE_ROOT}/d_net.h
    ${SOURCE_ROOT}/doomdata.h
    ${SOURCE_ROOT}/doomdef.h
    ${SOURCE_ROOT}/doomstat.h
    ${SOURCE_ROOT}/doomtype.h
    ${SOURCE_ROOT}/d_player.h
    ${SOURCE_ROOT}/dstrings.h
    ${SOURCE_ROOT}/d_textur.h
    ${SOURCE_ROOT}/d_think.h
    ${SOURCE_ROOT}/d_ticcmd.h
    ${SOURCE_ROOT}/f_finale.h
    ${SOURCE_ROOT}/f_wipe.h
    ${SOURCE_ROOT}/g_game.h
    ${SOURCE_ROOT}/hu_lib.h
    ${SOURCE_ROOT}/hu_stuff.h
    ${SOURCE_ROOT}/i_net.h
    ${SOURCE_ROOT}/info.h
    ${SOURCE_ROOT}/i_sound.h
    ${SOURCE_ROOT}/i_system.h
    ${SOURCE_ROOT}/i_video.h
    ${SOURCE_ROOT}/m_argv.h
    ${SOURCE_ROOT}/m_bbox.h
    ${SOURCE_ROOT}/m_cheat.h
    ${SOURCE_ROOT}/m_fixed.h
    ${SOURCE_ROOT}/m_menu.h
    ${SOURCE_ROOT}/m_misc.h
    ${SOURCE_ROOT}/m_random.h
    ${SOURCE_ROOT}/m_swap.h
    ${SOURCE_ROOT}/p_inter.h
    ${SOURCE_ROOT}/p_local.h
    ${SOURCE_ROOT}/p_mobj.h
    ${SOURCE_ROOT}/p_pspr.h
    ${SOURCE_ROOT}/p_saveg.h
    ${SOURCE_ROOT}/p_setup.h
    ${SOURCE_ROOT}/p_spec.h
    ${SOURCE_ROOT}/p_tick.h
    ${SOURCE_ROOT}/r_bsp.h
    ${SOURCE_ROOT}/r_data.h
    ${SOURCE_ROOT}/r_defs.h
    ${SOURCE_ROOT}/r_draw.h
    ${SOURCE_ROOT}/r_local.h
    ${SOURCE_ROOT}/r_main.h
    ${SOURCE_ROOT}/r_plane.h
    ${SOURCE_ROOT}/r_segs.h
    ${SOURCE_ROOT}/r_sky.h
    ${SOURCE_ROOT}/r_state.h
    ${SOURCE_ROOT}/r_things.h
    ${SOURCE_ROOT}/sounds.h
    ${SOURCE_ROOT}/s_sound.h
    ${SOURCE_ROOT}/st_lib.h
    ${SOURCE_ROOT}/st_stuff.h
    ${SOURCE_ROOT}/tables.h
    ${SOURCE_ROOT}/v_video.h
    ${SOURCE_ROOT}/wi_stuff.h
    ${SOURCE_ROOT}/w_wad.h
    ${SOURCE_ROOT}/z_zone.h)

message (STATUS "SOURCE_FILES = ${${PROJECT_NAME}_SOURCE_FILES}")

add_executable(${PROJECT_NAME} 
    ${${PROJECT_NAME}_SOURCE_FILES} 
    ${${PROJECT_NAME}_HEADER_FILES})

target_link_libraries(${PROJECT_NAME}
        Xext
        X11
        nsl
        m
        sndserv)

target_include_directories(${PROJECT_NAME}
    PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

set_target_properties(${PROJECT_NAME} PROPERTIES LINKER_LANGUAGE C)
