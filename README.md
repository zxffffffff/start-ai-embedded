# start-ai-embedded

 使用本地模型和服务的 AI 脚手架，例如 Ollama 和 ComfyUI

> 说明：
>
> 1. 优先使用官网下载安装包，可以实时更新且体验更好
> 2. 其次使用 `submodule` 拉取并编译，使用 `pm2` 守护运行
> 3. 最后使用 `docker` 运行，跳过那些烦人的报错

## Ollama

建议下载安装包，可以实时更新

官网: <https://ollama.com/>

### Ollama WebUI

仓库: <https://github.com/open-webui/open-webui.git>

```bash
# 引入子模块
git submodule add -f https://github.com/open-webui/open-webui.git embedded/open-webui
git submodule update --init --recursive

# 编译运行
sh scripts/open-webui/build-mac.sh
sh scripts/open-webui/run-mac.sh

# 加入 pm2
pm2 start scripts/open-webui/run-mac.sh --name Ollama-WebUI
```

## ComfyUI

仓库: <https://github.com/comfyanonymous/ComfyUI>

```bash
# 引入子模块
git submodule add -f https://github.com/comfyanonymous/ComfyUI embedded/ComfyUI
git submodule update --init --recursive

# 编译运行
sh scripts/ComfyUI/build-mac.sh
sh scripts/ComfyUI/run-mac.sh

# 加入 pm2
pm2 start scripts/ComfyUI/run-mac.sh --name ComfyUI
```
