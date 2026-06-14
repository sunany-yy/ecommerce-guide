#!/bin/bash
# 一键推送站点到 GitHub

cd "$(dirname "$0")"

# 检查是否已设置 remote
REMOTE=$(git remote get-url origin 2>/dev/null || echo "")
if [ -z "$REMOTE" ]; then
  echo "请输入 GitHub 仓库地址（回车使用默认）:"
  echo "  默认: https://github.com/sunany-yy/ecommerce-guide.git"
  read -p "> " INPUT_URL
  REMOTE="${INPUT_URL:-https://github.com/sunany-yy/ecommerce-guide.git}"
  git remote add origin "$REMOTE"
fi

# 提交并推送
git add -A
git commit -m "更新站点 $(date +%Y-%m-%d)"
git push -u origin main

echo ""
echo "推送完成！"
echo "站点地址: https://sunany-yy.github.io/ecommerce-guide"
