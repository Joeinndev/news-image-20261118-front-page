#!/bin/sh
# Renders news.html to entry.png (1024x1024) with headless Chrome. Run once by hand; the entry ships the PNG.
CHROME="${CHROME:-/c/Program Files/Google/Chrome/Application/chrome.exe}"
DIR="$(cd "$(dirname "$0")" && pwd -W 2>/dev/null || pwd)"
"$CHROME" --headless=new --disable-gpu --hide-scrollbars --window-size=1024,1024 \
  --screenshot="$DIR/entry.png" "file:///$DIR/news.html"
