#!/bin/bash

if [[ `ibus engine | awk -F":" '{ print $2 }'` == "us" ]]; then
	ibus engine 'uniemoji'
else
	ibus engine 'xkb:us::eng'
fi
