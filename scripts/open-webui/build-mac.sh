#!/bin/sh
set -e

root_path=$(cd "$(dirname "$0")" && pwd)
folder_name=$(basename "$root_path")
repo_path=${root_path}/../../embedded/${folder_name}
cd ${repo_path}

# Copying required .env file
cp -RPp .env.example .env

# Building Frontend Using Node
npm install
npm run build

cd ./backend

# Optional: To install using Conda as your development environment, follow these instructions:
# Create and activate a Conda environment
conda create --name open-webui-env python=3.11
conda init zsh # 手动执行
conda activate open-webui-env

# Install dependencies
pip install -r requirements.txt -U

# Start the application
# bash start.sh
