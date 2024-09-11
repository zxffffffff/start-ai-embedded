#!/bin/sh
set -e

# 获取最新提交、合并
git submodule update --remote --merge
