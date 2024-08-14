#!/bin/sh
set -e

root_path=$(cd "$(dirname "$0")" && pwd)
folder_name=$(basename "$root_path")
repo_path=${root_path}/../../embedded/${folder_name}
cd ${repo_path}

cd ./backend

# Start the application
bash start.sh
