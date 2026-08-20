#!/usr/bin/env bash
#
# Mirror externally-hosted talk assets into files/ so the site doesn't
# depend on third-party servers staying up.
#
#   ./tools/fetch-assets.sh
#
# After running, tell Claude (or edit _layouts/modern.html yourself) to
# repoint the corresponding links at the local copies.

set -uo pipefail
cd "$(dirname "$0")/.."

# <url>|<local filename>
ASSETS=(
  "https://netdevconf.info/0x18/docs/netdev-0x18-paper7-talk-slides/iotlb-netdev-no-video.pdf|iotlb-netdev0x18-slides.pdf"
  "https://www.usenix.org/system/files/nsdi22_slides_ghasemirahni.pdf|ordermatters-nsdi22-slides.pdf"
  "https://se.inf.tu-dresden.de/eurosys2019/Video/26_3/Alireza%20Farshin.mov|slice-aware-eurosys19-video.mov"
)

fail=0
for a in "${ASSETS[@]}"; do
  url="${a%%|*}"; out="files/${a##*|}"
  if [ -f "$out" ]; then
    echo "skip     ${out##*/}  (already present)"
    continue
  fi
  if curl -fsSL --max-time 120 "$url" -o "$out"; then
    printf "ok       %-34s %s\n" "${out##*/}" "$(du -h "$out" | cut -f1)"
  else
    echo "FAILED   ${out##*/}" >&2
    rm -f "$out"
    fail=1
  fi
done

echo
[ $fail -eq 0 ] && echo "All assets mirrored into files/." \
                || echo "Some downloads failed — the site still works via the original URLs."
