#!/bin/bash
docker run -ti --rm  --runtime nvidia --privileged  -v /dev/bus/usb:/dev/bus/usb -v /etc/localtime:/etc/localtime:ro --network host -e DISPLAY -v /tmp:/tmp camp-gstreamer:prod /bin/bash
