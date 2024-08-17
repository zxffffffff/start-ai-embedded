#!/bin/sh
set -e

root_path=$(cd "$(dirname "$0")" && pwd)
folder_name=$(basename "$root_path")
repo_path=$(realpath "${root_path}/../../embedded/${folder_name}")
cd ${repo_path}

# 启动，注意权限问题
python main.py --listen 0.0.0.0
