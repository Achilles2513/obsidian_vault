# 推送到 GitHub 最后尝试
# 如果失败，请使用其他方法

Write-Host @"
🚀 正在尝试推送到 GitHub...

如果此脚本失败，请使用以下替代方法：

方法 1: GitHub Desktop
https://desktop.github.com/

方法 2: VS Code
文件 → 打开文件夹 → C:\obsidian_workshop\Roundabout
源代码管理 → ... → 发布到 GitHub

方法 3: 手动上传
https://github.com/Achilles2513/obsidian_vault
→ Add file → Upload files
"@

# 设置 Git 用户信息（如果未设置）
git config user.email "user@example.com" 2>$null
git config user.name "Achilles2513" 2>$null

# 检查远程
git remote -v

# 推送
Write-Host "`n正在推送..."
try {
    git push -u origin main
    Write-Host "✅ 推送成功！"
} catch {
    Write-Host "❌ 推送失败，请使用其他方法"
    Write-Host "错误: $_"
}

Write-Host "`n按任意键退出..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
