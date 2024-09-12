#!/bin/sh
set -e

root_path=$(cd "$(dirname "$0")" && pwd)
folder_name=$(basename "$root_path")
repo_path=$(realpath "${root_path}/../../embedded/${folder_name}")
cd ${repo_path}

# 依赖 python 3.11
brew install python@3.11

# 依赖 conda
# brew install --cask anaconda
# export PATH=/opt/homebrew/anaconda3/bin:$PATH

# Copying required .env file
cp -RPp .env.example .env

# Building Frontend Using Node
npm install
npm run build

cd ./backend

# 创建虚拟环境
if [ ! -d "venv" ]; then
    python3.11 -m venv ./venv
fi
source ./venv/bin/activate
# Optional: To install using Conda as your development environment, follow these instructions:
# Create and activate a Conda environment
# onda create --name open-webui-env python=3.11 -y
# onda init zsh # 手动执行
# ource ~/.zshrc
# onda activate open-webui-env

# Install dependencies
which pip
pip install -r requirements.txt -U

# Start the application
bash start.sh
