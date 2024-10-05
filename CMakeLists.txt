cmake_minimum_required(VERSION 3.22)
project(vtermtest)

INCLUDE(FindPkgConfig)
pkg_check_modules(SDL2 REQUIRED sdl2 SDL2_ttf)
find_library(ICUUC_LIB icuuc)
find_library(VTERM_LIB vterm)

add_executable(${PROJECT_NAME})
target_sources(${PROJECT_NAME} PRIVATE vtermtest.cpp)

target_link_libraries(${PROJECT_NAME}
    PUBLIC
      ${SDL2_LIBRARIES}
      ${VTERM_LIB}
      ${ICUUC_LIB})

install(TARGETS ${PROJECT_NAME} DESTINATION bin)
install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/Iosevka-Nerd-Font-Complete.ttf DESTINATION share/fonts)
