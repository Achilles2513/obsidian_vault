# Obsidian Git 同步脚本
# 用法: 将此脚本放在 Obsidian Vault 根目录，双击运行或设置定时任务

# 设置变量
$vaultPath = "C:\obsidian_workshop\Roundabout"
$logFile = "$vaultPath\.git-sync.log"

# 进入 Vault 目录
Set-Location $vaultPath

# 记录日志函数
function Write-Log {
    param([string]$message)
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    "$timestamp - $message" | Out-File -FilePath $logFile -Append
    Write-Host $message
}

Write-Log "===== 开始同步 ====="

# 检查是否有更改
$status = git status --porcelain
if ($status) {
    Write-Log "检测到更改，准备提交..."
    
    # 添加所有更改
    git add .
    
    # 提交更改
    $commitMessage = "Auto sync: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
    git commit -m $commitMessage
    
    if ($LASTEXITCODE -eq 0) {
        Write-Log "本地提交成功"
        
        # 推送到远程
        git push origin main
        
        if ($LASTEXITCODE -eq 0) {
            Write-Log "✅ 同步成功！更改已推送到 GitHub"
        } else {
            Write-Log "❌ 推送失败，尝试拉取更新..."
            git pull origin main --rebase
            git push origin main
        }
    } else {
        Write-Log "❌ 提交失败"
    }
} else {
    Write-Log "没有需要同步的更改"
}

# 检查远程是否有更新
Write-Log "检查远程更新..."
git fetch origin
$behind = git rev-list HEAD..origin/main --count
if ($behind -gt 0) {
    Write-Log "发现 $behind 个远程更新，正在拉取..."
    git pull origin main
    if ($LASTEXITCODE -eq 0) {
        Write-Log "✅ 已拉取远程更新"
    } else {
        Write-Log "⚠️ 拉取时有冲突，请手动解决"
    }
}

Write-Log "===== 同步完成 ====="
Write-Log ""

# 暂停显示结果
Write-Host "`n按任意键关闭..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
