#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

set -x

declare -A map
map=(
    ["lofi"]="https://www.youtube.com/watch?v=jfKfPfyJRdk"
    ["jazz"]="https://www.youtube.com/watch?v=HuFYqnbVbzY"
    ["rain"]="https://www.youtube.com/watch?v=qe3l1rvJMlA"
    ["fire"]="https://www.youtube.com/watch?v=UgHKb_7884o"
)

vurl=${map["$1"]}
url=$(yt-dlp --get-url -x "$vurl")
ffplay -nodisp "$url"
