#!/usr/bin/env bash

#Dependencies
# -i3lock -Scrot -Imagemagick

echo "checking dependencies"
if command -v i3lock >/dev/null 2>&1 ; then
if command -v scrot >/dev/null 2>&1 ; then
if command -v convert >/dev/null 2>&1 ; then

LOCK_IMG=/tmp/pixellock.png
SNAPSHOT_CMD="scrot $LOCK_IMG"
[ ! "$BLUR" ] && BLUR=${1:-2}

if [[ $BLUR -eq 0 || $BLUR -eq 1 ]] ; then
SCALE1="10%" SCALE2="1000%"
elif [ $BLUR -eq 2 ] ; then
SCALE1="20%" SCALE2="500%"
elif [ $BLUR -eq 3 ]; then
SCALE1="40%" SCALE2="250%"
fi

$SNAPSHOT_CMD
convert $LOCK_IMG -scale $SCALE1 -scale $SCALE2 $LOCK_IMG
i3lock -i $LOCK_IMG
rm $LOCK_IMG


else
echo "installing imagemagick"
suod pacman -S install imagemagick
fi
else
echo "installing scrot"
sudo pacman -S install scrot
fi
else
echo "installing imagemagic"
sudo pacman -S install i3lock
fi
