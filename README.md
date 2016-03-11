# docker-zfswatcher
zfswatcher in docker container

Needs access to /dev/zfs.
For persistent config, mount a folder containing zfswatcher.conf to /zfswatcher_config

Example run command:
docker run -d -v zfswatcher_config:/zfswatcher_config -p 80:80 --device /dev/zfs:/dev/zfs:rw crazymanjinn/zfswatcher
