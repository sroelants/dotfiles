xmodmap -e "keysym Caps_Lock = Escape" &
 
# make CapsLock behave like Ctrl:
setxkbmap -layout us -variant dvorak-intl -option ctrl:nocaps &

# make short-pressed Ctrl behave like Escape:
xcape -t 200 -e 'Control_L=Escape' &

~/.fehbg &

i3
