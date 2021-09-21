FROM pypy:3

WORKDIR /srv/gallery-dl
ENV UID=1000 GID=1000

ADD https://raw.githubusercontent.com/mikf/gallery-dl/master/docs/gallery-dl.conf .
ADD update_apps.sh .

RUN DEBIAN_FRONTEND=noninteractive \
    chown -R $UID:$GID . && \
    apt-get update && apt-get install -y --no-install-recommends ffmpeg && \
    pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir yt-dlp && \
    pip install --no-cache-dir gallery-dl


USER $UID:$GID
ENTRYPOINT [ "gallery-dl" ]
CMD [ "--help" ]
