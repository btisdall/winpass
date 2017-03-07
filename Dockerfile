FROM alpine:3.4

RUN apk --update add \
    samba \
    && rm -rf /var/cache/apk/* \
    && touch /etc/samba/smb.conf
