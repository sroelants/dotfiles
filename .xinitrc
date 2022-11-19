# make CapsLock behave like Ctrl:
setxkbmap -layout us -variant dvorak-intl -option ctrl:nocaps &

# Map caps lock to be an extra escape key
xmodmap -e "keysym Caps_Lock = Escape" &
 

# make short-pressed Ctrl behave like Escape:
xcape -t 150 -e 'Control_L=Escape' &

# Start ssh-agent 
# eval $(ssh-agent) & # Doing this in fish.config instead

# Reset previously selected wallpaper
~/.fehbg &

i3
