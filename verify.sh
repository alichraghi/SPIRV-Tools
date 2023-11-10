#!/usr/bin/env bash
set -euo pipefail

git diff $(git merge-base main upstream/main)..main \
    --diff-filter=d \
    ':(exclude)include/extension_enum.inc' \
    ':(exclude)include/spv-amd-shader-ballot.insts.inc' \
    ':(exclude)README.md' \
    ':(exclude)build.zig' \
    ':(exclude)build.zig.zon' \
    ':(exclude)update.sh' \
    ':(exclude)verify.sh' \
    ':(exclude).github' \
    ':(exclude).gitignore'