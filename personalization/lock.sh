#!/bin/sh
## To use with i3lock-color-git

B='#00000000'  # blank
#C='#ffffff22'  # clear ish
C='#ffffff22'  # clear ish
#D='#ff00ffcc'  # default
D='#dbdbdbff'  # default
#T='#ee00eeee'  # text
T='#dbdbdbff'  # text
W='#880000bb'  # wrong
#V='#bb00bbbb'  # verifying
V='#f37b00bb'  # verifying

i3lock              \
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
--textcolor=$T        \
--timecolor=$T        \
--datecolor=$T        \
--keyhlcolor=$W       \
--bshlcolor=$W        \
\
--screen 0            \
--blur 5              \
--clock               \
--indicator           \
--timestr="%H:%M:%S"  \
--datestr="%A, %m %Y" \

# --veriftext="Drinking verification can..."
# --wrongtext="Nope!"
# --textsize=20
# --modsize=10
# --timefont=comic-sans
# --datefont=monofur
# etc