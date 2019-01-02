while true; do inotifywait -e CLOSE_WRITE ./temp2.asy; asy --render 0 ./temp2.asy; done
