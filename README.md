# A minimal Debian base image for Docker with the S6 supervisor

[![](https://badge.imagelayers.io/j1mr10rd4n/docker-debian-s6:latest.svg)](https://imagelayers.io/?images=j1mr10rd4n/docker-debian-s6:latest 'Get your own badge on imagelayers.io')

Docker-debian-s6 is a [Docker](https://www.docker.com) image that contains a Debian base image together with the [s6 overlay](https://github.com/just-containers/s6-overlay).

This makes it ideal for containers that use the "one *thing* per container" pattern (in contrast to the "one process per container" pattern).
