FROM alpine
RUN apk add htop

FROM scratch
COPY --from=0 /usr/bin/htop /usr/bin/htop
COPY --from=0 /usr/lib/libncursesw.so.6 /usr/lib/libncursesw.so.6
COPY --from=0 /lib/ld-musl-x86_64.so.1 /lib/ld-musl-x86_64.so.1
COPY --from=0 /etc/terminfo /etc/terminfo
ENTRYPOINT ["/usr/bin/htop"]
