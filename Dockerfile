FROM bash:4.4

COPY set-up-laptop.sh /

CMD ["bash", "/set-up-laptop.sh"]
