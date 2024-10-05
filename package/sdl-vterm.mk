################################################################################
#
# sdl-vterm
#
################################################################################

# SDL_VTERM_VERSION = main
# SDL_VTERM_SITE = $(call github,manyids2,sdl-vterm,$(SDL_VTERM_VERSION))
SDL_VTERM_SITE = /home/x/projects/sdl/sdl-vterm
SDL_VTERM_SITE_METHOD = local

SDL_VTERM_DEPENDENCIES += sdl2_mixer sdl2_ttf sdl2_gfx libvterm

$(eval $(cmake-package))
