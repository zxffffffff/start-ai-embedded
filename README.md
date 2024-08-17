# start-ai-embedded

 使用本地模型和服务的 AI 脚手架，例如 Ollama 和 ComfyUI

> 说明：使用 `submodule` 拉取并编译，使用 `pm2` 守护运行

## Ollama

### 建议下载安装包，可以实时更新

官网: <https://ollama.com/>

仓库: <https://github.com/ollama/ollama.git>

```bash
# 引入子模块
git submodule add -f https://github.com/ollama/ollama.git embedded/ollama
git submodule update --init --recursive

# 编译运行 - macOS
sh scripts/ollama/build-mac.sh
sh scripts/ollama/run-mac.sh

# 加入 pm2
pm2 start scripts/ollama/run-mac.sh --name ollama-11434
```

### 默认模型保存路径

> 可以修改环境变量 `OLLAMA_MODELS`

- macOS: ~/.ollama/models
- Linux: /usr/share/ollama/.ollama/models
- Windows: C:\Users\%username%\.ollama\models

## Ollama WebUI

仓库: <https://github.com/open-webui/open-webui.git>

```bash
# 引入子模块
git submodule add -f https://github.com/open-webui/open-webui.git embedded/open-webui
git submodule update --init --recursive

# 编译运行 - macOS
sh scripts/open-webui/build-mac.sh
sh scripts/open-webui/run-mac.sh

# 加入 pm2
pm2 start scripts/open-webui/run-mac.sh --name Ollama-WebUI-8080
```

## ComfyUI

仓库: <https://github.com/comfyanonymous/ComfyUI>

```bash
# 引入子模块
git submodule add -f https://github.com/comfyanonymous/ComfyUI embedded/ComfyUI
git submodule update --init --recursive

# 编译运行 - macOS
sh scripts/ComfyUI/build-mac.sh
sh scripts/ComfyUI/run-mac.sh

# 加入 pm2
pm2 start scripts/ComfyUI/run-mac.sh --name ComfyUI-8188
```
