#!/bin/sh

id=$(curl -s https://api.impfstoff.link/\?v\=0.3 | jq -r '.[][0] | select(.open==true) | .id')
url="https://www.doctolib.de/institut/berlin/ciz-berlin-berlin?pid=practice-"
case $id in

arena)  echo "$(date) : Arena has free spots" >> log.txt
  xdg-open "${url}158431"
    ;;
tempelhof)  echo  "$(date) : tempelhof has free spots" >> log.txt
  xdg-open "${url}158433"
    ;;
messe)  echo  "$(date) : Messe has free spots" >> log.txt
  xdg-open "${url}158434"
    ;;
velodrom) echo  "$(date) : Velodrom has free spots" >> log.txt
  xdg-open "${url}158435"
   ;;
tegel) echo  "$(date) : Tegel has free spots" >> log.txt
  xdg-open "${url}158436"
   ;;
erika) echo  "$(date) : erika has free spots" >> log.txt
  xdg-open "${url}158437"
   ;;
*) echo "No free spots sorry!"
   ;;
esac
