# aphy7/gallery-dl
A container with [gallery-dl](https://github.com/mikf/gallery-dl) and [yt-dlp](https://github.com/yt-dlp/yt-dlp) pre-installed.

*Warning:* This just adds bloat to have gallery-dl neatly seperated in a container any probably isn't what you're looking for.

## Usage
With the container running and volumes mounted as required, just run `docker exec gallery-dl gallery-dl` instead of just `gallery-dl`. I recommend creating an alias in your shell for that. Remember to mount what you need in Docker.

## Motivation
I wanted to use gallery-dl without installing all the dependencies on the host-system like before. With this, I just needed to create an alias.