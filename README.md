# aphy7/gallery-dl
A container with [gallery-dl](https://github.com/mikf/gallery-dl) and [yt-dlp](https://github.com/yt-dlp/yt-dlp) pre-installed.

*Warning:* This just adds bloat to have gallery-dl neatly seperated in a container any probably isn't what you're looking for.

# Usage
## While keeping the container running
Start the container with `docker run -it --rm --name gallery-dl -v /somedir:/somedir --entrypoint /bin/bash aphy7/gallery-dl` and run `docker exec gallery-dl gallery-dl` instead of *gallery-dl*. Replace `/somedir` with your home, a dedicated sub-folder or similar to read from / write to the host. You can put your *gallery-dl.conf* there, too. I recommend using the same path for in- and outside of the container.

## Temporary container
Use `docker run --rm -v /somedir:/somedir aphy7/gallery-dl` instead of *gallery-dl*.

# Tips
- There's a script at `/srv/gallery-dl/update_apps.sh` to upgrade the python apps.
- Add `alias gallery-dl='docker run --rm -v /somedir:/somedir aphy7/gallery-dl'` to your *.bashrc* to use the Docker version
- Add `--entrypoint yt-dlp` to the command in front of *aphy7/gallery-dl* to use yt-dlp
- Add `alias yt-dlp='docker run --rm -v /somedir:/somedir --entrypoint yt-dlp aphy7/gallery-dl'` to your *.bashrc*

# Motivation
I wanted to use gallery-dl without installing anything on the host-system. With this, I just need to create an alias. 
I also learned a bit about creating own Docker images.

# Other approaches
- [suika/gallery-dl](https://hub.docker.com/r/suika/gallery-dl)

