# camp-gstreamer

adapted by Ulrich Eck:
- added NVEnc support
- Added python3 support
- Added jupyter notebook

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
* WPE WebKit (newer version from upstream release)

GStreamer and components are tracking upstream master branches (with minor fixes on top) and are usually updated a few times a month.
There are also builds of stable upstream releases available as well.

Base OS is Ubuntu 22.04.

## SCCache support

The sysroot includes WPEWebKit, which is a huge project and requires a good
build machine. However in case you have access to a
[SCCache](https://github.com/mozilla/sccache) scheduler online, you can use it
to build WPEWebKit:

```bash
export SCCACHE_SCHEDULER=https://sccache.corp.com
export SCCACHE_AUTH_TOKEN=s3cr3t
export WEBKIT_USE_SCCACHE=1
./build-latest.sh
```

The configuration template stored in `sccache.toml` is filled with the scheduler
address and authentication token supplied through the corresponding environment
variables.

# Builds on Docker Hub
Builds use Restream-specific patches by default, but there are also vanilla upstream builds available.

There are 4 kinds of images pushed to Docker Hub:
* camp-gstreamer:latest-prod - optimized (`-O3` and `LTO`) build without debug symbols for production purposes
* camp-gstreamer:latest-prod-dbg - optimized (`-O2` only) build with debug symbols included for production purposes with better debugging experience
