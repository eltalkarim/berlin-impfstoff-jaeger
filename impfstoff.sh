#!/bin/sh

id=$(curl -s https://api.impfstoff.link/\?v\=0.3 | jq -r '.[][0] | select(.open=true) | .id')
url="https://www.doctolib.de/institut/berlin/ciz-berlin-berlin?pid=practice-"
case $id in

arena)  echo "$(date) : Arena has free spots" >> log.txt
  xdg-open "${url}158431"
  exit
    ;;
tempelhof)  echo  "$(date) : tempelhof has free spots" >> log.txt
  xdg-open "${url}158433"
  exit
    ;;
messe)  echo  "$(date) : Messe has free spots" >> log.txt
  xdg-open "${url}158434"
  exit
    ;;
velodrom) echo  "$(date) : Velodrom has free spots" >> log.txt
  xdg-open "${url}158435"
   ;;
tegel) echo  "$(date) : Tegel has free spots" >> log.txt
  xdg-open "${url}158436"
  exit
   ;;
erika) echo  "$(date) : erika has free spots" >> log.txt
  xdg-open "${url}158437"
  exit
   ;;
*) echo "No free spots sorry!"
   ;;
esac
