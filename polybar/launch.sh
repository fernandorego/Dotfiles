#if pgrep polybar; then killall polybar; fi

kill -9 $(pgrep -f 'polybar') >/dev/null 2>&1

polybar-msg cmd quit >/dev/null 2>&1

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -q main &

if xrandr | grep 'HDMI-1 connected'; then
	polybar -q secondary &
fi

nitrogen --restore
