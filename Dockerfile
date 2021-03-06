FROM alpine:3.13.0

RUN \
	wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && \
	wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.32-r0/glibc-2.32-r0.apk && \
	apk -U add glibc-2.32-r0.apk && \
	rm glibc-2.32-r0.apk /etc/apk/keys/sgerrand.rsa.pub
