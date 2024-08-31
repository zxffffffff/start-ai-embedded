#!/bin/sh
set -e

root_path=$(cd "$(dirname "$0")" && pwd)
folder_name=$(basename "$root_path")
repo_path=$(realpath "${root_path}/../../embedded/${folder_name}")
cd ${repo_path}

# 创建虚拟环境
if [ ! -d "venv" ]; then
    python -m venv ./venv
fi
source ./venv/bin/activate

# 安装依赖
pip install -r requirements.txt

### 推荐使用 ComfyUI Manager
cd ${repo_path}/custom_nodes
if [ ! -d "ComfyUI-Manager" ]; then
    git clone https://github.com/ltdrdata/ComfyUI-Manager.git
    # 本地运行，建议不限制安全级别
    cd ComfyUI-Manager
    sed -i '.bak' 's/^security_level = normal$/security_level = weak/' config.ini
fi
