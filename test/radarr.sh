docker run \
  --name=radarr \
    -v /tmp/config:/config \
    -v /tmp/downloads:/downloads \
    -v /tmp/movies:/movies \
    -v /etc/localtime:/etc/localtime:ro \
    -p 7878:7878 \
  linuxserver/radarr
