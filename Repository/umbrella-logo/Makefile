prefix  = /usr
varpath = /var
images_path = $(DESTDIR)$(prefix)/share/umbrella-logo
wallpaper_path = $(DESTDIR)$(prefix)/share/wallpapers/Umbrella
# DESTDIR is intentionally missing on th next line
images_var_path = $(varpath)/lib/umbrella-logo

# these resolutions must coincide with those, generated by ./generate-pngs.sh 
# and in the updater script.
logo_resolutions = 160x120 320x240 480x360 640x480 960x720 1024x768 1920x1440 1920x1080
wallpaper_resolutions = 640x480-cc 1024x768-cc 2048x1536-cc 640x480-nw 1024x768-nw 2048x1536-nw 1440x900-cc 2560x1440-cc 1440x900-nw 2560x1440-nw
logo_images = $(logo_resolutions:%=logo-%.png)
wallpaper_images = $(wallpaper_resolutions:%=%.png)

install_dir = install -o root -g root -m 755 -d
install_file = install -o root -g root -m 644 -c

all:
	./generate-pngs.sh

install: all
	$(install_dir) $(images_path)/
	$(install_file) $(logo_images) logo.svg $(images_path)/
	$(install_file) $(wallpaper_images) $(images_path)/
	$(install_file) screenshot.png $(images_path)/
	$(install_dir) $(wallpaper_path)/contents/images
	for wallpaper in $(wallpaper_images) ; do \
	    ln -s $(images_var_path)/$$wallpaper $(wallpaper_path)/contents/images/$$wallpaper ; \
	done
	ln -s $(images_var_path)/screenshot.png $(wallpaper_path)/contents/screenshot.png
	$(install_file) metadata.desktop $(wallpaper_path)/
clean:
	rm -f $(logo_images) $(wallpaper_images) screenshot.png
