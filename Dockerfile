FROM crazymanjinn/zfs-utils

ENV zfswatcher_package="zfswatcher_0.03-2_amd64.deb" \
  zfswatcher_link="http://zfswatcher.damicon.fi/dist/"

RUN curl -OL ${zfswatcher_link}${zfswatcher_package} && \
  dpkg -i ${zfswatcher_package} && \
  rm ${zfswatcher_package} && \
  touch /etc/zfs/zfswatcher.conf && \
  ln -s /zfswatcher/zfswatcher.conf /etc/zfs/

ENTRYPOINT ["zfswatcher"]
