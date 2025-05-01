#!/bin/bash

SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

for file in "$SOURCE_DIR"/.*; do
  [[ "$(basename "$file")" == "." || "$(basename "$file")" == ".." ]] && continue

  HOME_FILE="$HOME/$(basename "$file")"

  if [[ -f "$HOME_FILE" ]]; then
    echo "=== Diff for $(basename "$file") ==="
    diff -u "$HOME_FILE" "$file"
    echo
  else
    echo "*No corresponding file in HOME for $(basename "$file")*\n"
  fi
done

