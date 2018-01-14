#!/bin/sh

imdb_id="$1"
search_regex="$2"

curl --compressed -s "http://json.wizdom.xyz/$imdb_id.json" | \
jq . | \
grep -Ei -B 1 "$search_regex" | \
awk -F '"' '/"id"/{print $4}' | \
parallel 'curl --compressed -s "http://zip.wizdom.xyz/{}.zip" > {}.zip; unzip -o {}.zip; rm -f {}.zip'
