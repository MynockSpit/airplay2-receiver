docker run -it --rm \
  --device /dev/snd \
  --net host \
  --volume `pwd`/pairings/:/airplay2/pairings/ \
  -e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native \
  -v ${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native \
  -v ~/.config/pulse/cookie:/root/.config/pulse/cookie \
  ap2-receiver