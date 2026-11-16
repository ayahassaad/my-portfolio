#!/bin/sh
# Regenerates assets/Ayah-Liljekvist-CV.pdf from cv/cv.html with headless Chrome.
cd "$(dirname "$0")/.." || exit 1
"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --headless=new --disable-gpu \
  --no-pdf-header-footer --print-to-pdf="assets/Ayah-Liljekvist-CV.pdf" "file://$PWD/cv/cv.html" 2>/dev/null
