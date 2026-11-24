#!/bin/bash
cd "$(dirname "$0")"

docker rm -f midterm-hardened 2>/dev/null || true

docker run -d \
  --name midterm-hardened \
  -p 5000:5000 \
  --read-only \
  --tmpfs /tmp \
  --tmpfs /run \
  --cap-drop ALL \
  --security-opt no-new-privileges=true \
  --security-opt seccomp=./seccomp-profile.json \
  midterm:latest
