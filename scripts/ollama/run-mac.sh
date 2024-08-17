#!/bin/sh
set -e

root_path=$(cd "$(dirname "$0")" && pwd)
folder_name=$(basename "$root_path")
repo_path=$(realpath "${root_path}/../../embedded/${folder_name}")
cd ${repo_path}

# 设置两遍，所有场景都能覆盖到
model_path=$(realpath "${root_path}/../../models/${folder_name}")

launchctl setenv OLLAMA_HOST "0.0.0.0"
launchctl setenv OLLAMA_MODELS "${model_path}"
launchctl setenv OLLAMA_DEBUG "1"

export OLLAMA_HOST="0.0.0.0"
export OLLAMA_MODELS="${model_path}"
export OLLAMA_DEBUG="1"

# 启动服务器（仅支持 HTTP 访问，不能使用 ollama list 等命令）
./ollama serve
