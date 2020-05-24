#!/bin/sh

B='#282828b3'  # blank
C='#282828b3'  # clear ish
D='#98971aff'  # default
T='#98971aff'  # text
W='#4d4d12ff'  # wrong
V='#98971aff'  # verifying

i3lock \
--insidevercolor=$C   \
--ringvercolor=$V     \
\
--insidewrongcolor=$C \
--ringwrongcolor=$W   \
\
--insidecolor=$B      \
--ringcolor=$D        \
--linecolor=$B        \
--separatorcolor=$D   \
\
--verifcolor=$T        \
--wrongcolor=$T        \
--timecolor=$T        \
--datecolor=$T        \
--layoutcolor=$T      \
--keyhlcolor=$W       \
--bshlcolor=$W        \
\
--screen 1            \
--blur 9              \
--clock               \
--indicator           \
--timestr="%H:%M:%S"  \
--datestr="%A, %d/%m/%y" \
\
--veriftext="Verifying" \
--wrongtext="Incorrect Password!" \
--locktext="Screen Locked" \
--layoutsize=30 \
--greetersize=30 \
--timesize=30 \
--datesize=30 \
--radius=200 \
--ring-width=14 \
#--timefont=comic-sans \
#--datefont=monofur \
# etc
