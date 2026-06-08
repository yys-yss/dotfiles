#!/usr/bin/env bash

wall="$1"

# wallpaper generation (fully detached, silent)
nohup matugen image "$wall" -q --prefer darkness \
  >/dev/null 2>&1 &
