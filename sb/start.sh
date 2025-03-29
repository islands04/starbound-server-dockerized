#!/bin/sh

cd linux

echo "----- STARBOUND -----"

./starbound_server $@
if [ $? -eq 0 ]; then
	exit 0;
fi

exit 1
