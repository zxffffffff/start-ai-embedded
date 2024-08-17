#!/bin/sh
# set -e

root_path=$(cd "$(dirname "$0")" && pwd)
cd ${root_path}

pm2 delete ollama-11434
pm2 delete Ollama-WebUI-8080
pm2 delete ComfyUI-8188

# git submodule update --init --recursive
# sh scripts/ollama/build-mac.sh
# sh scripts/open-webui/build-mac.sh
# sh scripts/ComfyUI/build-mac.sh

pm2 start ${root_path}/scripts/ollama/run-mac.sh --name ollama-11434
pm2 start ${root_path}/scripts/open-webui/run-mac.sh --name Ollama-WebUI-8080
pm2 start ${root_path}/scripts/ComfyUI/run-mac.sh --name ComfyUI-8188
