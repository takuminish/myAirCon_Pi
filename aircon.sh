#!/bin/bash

cool="cool"
hot="hot"
off="off"

if test $1 = $cool ; then
    irsend SEND_ONCE aircon cool
elif test $1 = $hot ; then
    irsend SEND_ONCE aircon hot
elif test $1 = $off ; then
    irsend SEND_ONCE aircon off
fi

    
