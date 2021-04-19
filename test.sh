#!/bin/bash

files=(common_lib/lib.py)

# Lookup bazel targets
targets=()
for file in $files; do
  echo $file
  targets+=($(bazel query $file))
done

echo $targets

# Lookup docker images
images=$(bazel query \
    --keep_going \
    --noshow_progress \
    "kind(.*_image, rdeps(//..., set(${targets[*]})))")
echo $images
