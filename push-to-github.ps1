# 推送到 GitHub 脚本
# 如果直接推送失败，请尝试以下方法：

# 方法 1: 使用 SSH（推荐）
# 1. 生成 SSH 密钥: ssh-keygen -t ed25519 -C "your@email.com"
# 2. 添加到 GitHub: Settings → SSH and GPG keys → New SSH key
# 3. 修改远程地址: git remote set-url origin git@github.com:Achilles2513/obsidian_vault.git
# 4. 推送: git push -u origin main

# 方法 2: 使用 GitHub Desktop
# 下载: https://desktop.github.com/
# 1. File → Add local repository
# 2. 选择 C:\obsidian_workshop\Roundabout
# 3. 点击 "Publish repository"

# 方法 3: 使用 Visual Studio Code
# 1. 打开 VS Code
# 2. File → Open Folder → C:\obsidian_workshop\Roundabout
# 3. 左侧源代码管理图标 → ... → 发布到 GitHub

# 方法 4: 检查网络代理
# 如果有代理，设置:
# git config --global http.proxy http://proxy.example.com:8080
# git config --global https.proxy https://proxy.example.com:8080

# 方法 5: 手动上传（备用）
# 1. 将文件夹压缩为 zip
# 2. GitHub 网页 → Upload files
# 3. 上传 zip 后解压

Write-Host "推送脚本已创建"
Write-Host ""
Write-Host "请尝试以下方法之一："
Write-Host "1. 使用 GitHub Desktop（最简单）"
Write-Host "2. 使用 VS Code 的 Git 功能"
Write-Host "3. 配置 SSH 密钥后推送"
Write-Host "4. 直接在 GitHub 网页上传文件"
