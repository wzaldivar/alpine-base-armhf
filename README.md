# ⚠️ OBSOLETE - KEPT FOR HISTORY ONLY ⚠️

This image contains pre-installed ARM cross-compilation tools from [wzaldivararmhf/arm-provider](https://github.com/wzaldivar/arm-provider).

**This approach is no longer needed** - Docker now has native multi-arch support.

**What this was:** Alpine base images with QEMU ARM emulation tools pre-installed  
**What you should use now:** Native Docker multi-platform builds

```
# Modern approach - no special base images needed
FROM --platform=$TARGETPLATFORM alpine:latest
# Docker handles ARM compilation natively
```

**Historical usage** (if you're curious):

```
FROM wzaldivararmhf/alpine-base-armhf
RUN ["cross-build-start"]
# your ARM build commands here
RUN ["cross-build-end"]
```

See [wzaldivararmhf/arm-provider](https://github.com/wzaldivar/arm-provider) for details on how the cross-compilation toolchain worked.

---
*Kept as historical artifact of pre-BuildKit ARM development workflows*

# alpine-base

alpine linux base image with:

* [qemu-arm-static](https://github.com/resin-io/qemu)

* [s6-overlay](https://github.com/just-containers/s6-overlay)

* [resin-xbuild](https://github.com/resin-io-projects/armv7hf-debian-qemu)

* [probe_files](https://github.com/wzaldivar/arm-provider)
