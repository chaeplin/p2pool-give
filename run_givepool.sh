#!/bin/sh
SERVICE='python ./run_p2pool.py --net givecoin'

if ps ax | grep -v grep | grep "$SERVICE" > /dev/null
then
        echo "$SERVICE is already running!"
else
        screen -d -m -S P2P_GIVE python ./run_p2pool.py --net givecoin --give-author 0 --disable-upnp -f 1

	wait
fi
