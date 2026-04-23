# 创建 Obsidian 自动同步任务
# 以管理员身份运行 PowerShell 执行此脚本

$taskName = "ObsidianAutoSync"
$vaultPath = "C:\obsidian_workshop\Roundabout"
$scriptPath = "$vaultPath\sync.ps1"

# 创建任务动作
$action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-ExecutionPolicy Bypass -WindowStyle Hidden -File `"$scriptPath`""

# 创建任务触发器（每 30 分钟）
$trigger = New-ScheduledTaskTrigger -Once -At (Get-Date) -RepetitionInterval (New-TimeSpan -Minutes 30) -RepetitionDuration (New-TimeSpan -Days 3650)

# 创建任务设置
$settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -StartWhenAvailable

# 注册任务
Register-ScheduledTask -TaskName $taskName -Action $action -Trigger $trigger -Settings $settings -Description "自动同步 Obsidian Vault 到 GitHub" -Force

Write-Host "✅ 自动同步任务已创建！"
Write-Host "任务名称: $taskName"
Write-Host "执行频率: 每 30 分钟"
Write-Host "Vault 路径: $vaultPath"
Write-Host ""
Write-Host "查看任务: 任务计划程序 → 任务计划程序库 → $taskName"
