# camp-gstreamer

adapted by Ulrich Eck:
- added NVEnc support

Ubuntu 22.04-based container images with upstream GStreamer and plugins pre-installed

Following components are present:
* GStreamer
* gst-plugins-base
* gst-plugins-good
* gst-plugins-bad (with `msdk`)
* gst-plugins-ugly
* gst-libav
* gstreamer-vaapi
* libnice (newer version from git)

GStreamer and components are tracking upstream master branches (with minor fixes on top) and are usually updated a few times a month.
There are also builds of stable upstream releases available as well.

Base OS is Ubuntu 22.04.
