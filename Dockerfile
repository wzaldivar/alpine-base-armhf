FROM arm32v6/alpine:3.8

COPY --from=wzaldivararmhf/arm-provider:2.0 /arm-provider/bin /usr/bin/

COPY --from=wzaldivararmhf/arm-provider:2.0 /arm-provider/s6_overlay /

COPY --from=wzaldivararmhf/arm-provider:2.0 /arm-provider/probe_files /

ENV PROBE_FILES_LIST="" \
    PROBE_FILES_INTERVAL=300

ENTRYPOINT [ "/init" ]
