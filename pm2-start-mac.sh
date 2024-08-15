#!/bin/sh
set -e

root_path=$(cd "$(dirname "$0")" && pwd)
cd ${root_path}

git submodule update --init --recursive

sh ${root_path}/scripts/open-webui/build-mac.sh
pm2 start ${root_path}/scripts/open-webui/run-mac.sh --name Ollama-WebUI-8080

sh ${root_path}/scripts/ComfyUI/build-mac.sh
pm2 start ${root_path}/scripts/ComfyUI/run-mac.sh --name ComfyUI-8188
