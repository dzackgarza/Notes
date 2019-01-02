#!/bin/bash

filename=$1
while true; do
  inotifywait -e CLOSE_WRITE $filename;
  asy --render 0 $filename;
done
