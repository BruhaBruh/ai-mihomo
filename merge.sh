#!/usr/bin/env bash

OUTPUT="bundle.yaml"

echo "payload:" > "$OUTPUT"

find . -type f \( -name "*.yml" -o -name "*.yaml" \) -print0 \
| xargs -0 grep -h "^[[:space:]]*-[[:space:]]*'" \
| sort -u >> "$OUTPUT"