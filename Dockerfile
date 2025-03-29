FROM archlinux

RUN useradd -ms /bin/bash starbound
COPY --chown=starbound:starbound ./sb/ /app/
EXPOSE 21025
VOLUME /app
WORKDIR /app
RUN pacman -Sy --noconfirm lib32-gcc-libs libvorbis
RUN chmod 755 /app
USER starbound
CMD sh start.sh
  

