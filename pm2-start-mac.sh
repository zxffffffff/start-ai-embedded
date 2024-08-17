#!/bin/sh
set -e

root_path=$(cd "$(dirname "$0")" && pwd)
cd ${root_path}

# pm2 delete all

pm2 start ${root_path}/scripts/ollama/run-mac.sh --name ollama-11434
pm2 start ${root_path}/scripts/open-webui/run-mac.sh --name Ollama-WebUI-8080
pm2 start ${root_path}/scripts/ComfyUI/run-mac.sh --name ComfyUI-8188
