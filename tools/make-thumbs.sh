#!/usr/bin/env bash
#
# Generate publication thumbnails for the homepage.
#
#   ./tools/make-thumbs.sh
#
# Renders page 1 of each paper PDF in files/ into images/papers/<slug>.jpg,
# cropped to the top portion of the page (title + abstract) — which is what
# the layout references.
#
# Requires: pdftoppm (poppler) and ImageMagick
#   brew install poppler imagemagick

set -euo pipefail

cd "$(dirname "$0")/.."

PDF_DIR="files"
OUT_DIR="images/papers"
WIDTH=560          # output width in px
CROP_PCT=55        # % of PDF page height to keep, from the top

SLUGS=(
  checkwork-apnet26
  hierarchical-dp-netcompute26
  mlsynth-naic25
  pruning-llm4code25
  fajita-conext24
  netconfeval-conext24
  flowmage-euromlsys24
  iotlb-peerj23
  ordermatters-nsdi22
  packetmill-asplos21
  ddio-atc20
  slice-aware-eurosys19
)

# ImageMagick 7 ships "magick"; v6 ships "convert". Support both.
if command -v magick >/dev/null 2>&1; then
  IM="magick"
elif command -v convert >/dev/null 2>&1; then
  IM="convert"
else
  echo "error: ImageMagick not found. Install with: brew install imagemagick" >&2
  exit 1
fi

command -v pdftoppm >/dev/null 2>&1 || {
  echo "error: 'pdftoppm' not found. Install with: brew install poppler" >&2
  exit 1
}

mkdir -p "$OUT_DIR"
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

for slug in "${SLUGS[@]}"; do
  pdf="$PDF_DIR/$slug.pdf"

  if [ ! -f "$pdf" ]; then
    echo "SKIP  $slug  (no $pdf)" >&2
    continue
  fi

  pdftoppm -png -r 150 -f 1 -l 1 -singlefile "$pdf" "$tmp/$slug"
  "$IM" "$tmp/$slug.png" \
    -gravity North -crop "100%x${CROP_PCT}%+0+0" +repage \
    -resize "${WIDTH}x" -quality 88 \
    -bordercolor '#e5e5e5' -border 1 \
    "$OUT_DIR/$slug.jpg"
  echo "ok    $slug"
done

echo
echo "Thumbnails written to $OUT_DIR/"
