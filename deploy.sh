#!/bin/bash
# 部署脚本 - 一键发布到 GitHub Pages
# 使用方法:
#   1. 在 GitHub 创建一个仓库（比如 yourname/ecommerce-guide）
#   2. 进入仓库 Settings → Pages → 选择 GitHub Actions 或 main 分支
#   3. 运行本脚本

echo "=== 部署独立站内容站 ==="

# 检查是否在 git 仓库中
if [ ! -d ".git" ]; then
  echo "初始化 git 仓库..."
  git init
  git checkout -b main
fi

git add -A
git commit -m "更新站点: $(date +%Y-%m-%d)"
echo ""
echo "现在运行以下命令推送到你的仓库:"
echo "  git remote add origin https://github.com/你的用户名/你的仓库名.git"
echo "  git push -u origin main"
echo ""
echo "然后在 GitHub 仓库 Settings → Pages 中开启 GitHub Pages"
echo "选择 main 分支的 / (root) 文件夹"
echo "============================================"
