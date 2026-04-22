# 手动同步演示

## 步骤 1: 查看当前状态
cd C:\obsidian_workshop\Roundabout
git status

## 步骤 2: 拉取远程更新
git pull origin main

## 步骤 3: 添加更改
git add .

## 步骤 4: 提交
git commit -m "更新笔记: $(Get-Date -Format 'yyyy-MM-dd')"

## 步骤 5: 推送
git push origin main

## 完成！
