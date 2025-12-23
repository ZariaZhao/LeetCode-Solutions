#!/bin/bash
# 每天一键提交

echo "📝 今天刷了哪些题？（比如：Two Sum, SQL 1757）"
read message

git add .
git commit -m "✅ Day $(($(git rev-list --count HEAD) + 1)): $message"
git push

echo "🎉 提交成功！"
