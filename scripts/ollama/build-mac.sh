#!/bin/sh
set -e

root_path=$(cd "$(dirname "$0")" && pwd)
folder_name=$(basename "$root_path")
repo_path=$(realpath "${root_path}/../../embedded/${folder_name}")
cd ${repo_path}

# cmake version 3.24 or higher
# go version 1.22 or higher
# gcc version 11.4.0 or higher
brew install go cmake gcc

# 可以选择启用调试和更详细的日志记录：
# At build time
# export CGO_CFLAGS="-g"
# At runtime
# export OLLAMA_DEBUG=1

# 编译
go generate ./...
go build .

# ./ollama
