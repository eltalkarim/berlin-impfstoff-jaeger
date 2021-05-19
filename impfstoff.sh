#!/bin/sh

id=$(curl -s https://api.impfstoff.link/\?v\=0.3 | jq -r '.[][] | select(.open==true) | .id')
url="https://www.doctolib.de/institut/berlin/ciz-berlin-berlin?pid=practice-"
echo $id

case $id in

arena)  echo "$(date) : Arena has free spots" >> log.txt
  xdg-open "${url}158431"
  kill -INT $(pidof watch)
    ;;
tempelhof)  echo  "$(date) : tempelhof has free spots" >> log.txt
  xdg-open "${url}158433"
  kill -INT $(pidof watch)
    ;;
messe)  echo  "$(date) : Messe has free spots" >> log.txt
  xdg-open "${url}158434"
  kill -INT $(pidof watch)
    ;;
velodrom) echo  "$(date) : Velodrom has free spots" >> log.txt
  xdg-open "${url}158435"
   ;;
tegel) echo  "$(date) : Tegel has free spots" >> log.txt
  xdg-open "${url}158436"
  kill -INT $(pidof watch)
   ;;
erika) echo  "$(date) : erika has free spots" >> log.txt
  xdg-open "${url}158437"
  kill -INT $(pidof watch)
   ;;
*) echo "No free spots sorry!"
   ;;
esac
