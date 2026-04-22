# Obsidian 多设备同步指南

## 📁 本仓库信息
- **路径**: `C:\obsidian_workshop\Roundabout`
- **同步方式**: Git + GitHub（或其他 Git 托管服务）
- **自动同步脚本**: `sync.ps1`

---

## 🚀 快速开始

### Windows 设备

**1. 首次设置**
```bash
# 克隆仓库
git clone https://github.com/你的用户名/obsidian-vault.git

# 在 Obsidian 中打开
# 文件 → 打开 Vault → 打开文件夹作为 Vault → 选择克隆的文件夹
```

**2. 同步**
```bash
# 手动同步
cd obsidian-vault
git pull  # 拉取远程更新
git add .
git commit -m "update notes"
git push  # 推送本地更改

# 或使用自动脚本
.\sync.ps1
```

### macOS/Linux 设备

```bash
# 克隆仓库
git clone https://github.com/你的用户名/obsidian-vault.git

# 进入目录
cd obsidian-vault

# 同步
git pull
git add .
git commit -m "update"
git push
```

### 移动端（iOS/Android）

**方案 A: Working Copy (iOS)**
1. App Store 下载 Working Copy
2. 克隆 GitHub 仓库
3. 使用 "Open in Obsidian" 功能

**方案 B: Termux (Android)**
```bash
pkg install git
git clone https://github.com/你的用户名/obsidian-vault.git
# 使用 FolderSync 等工具同步
```

---

## ⚙️ 自动同步设置

### Windows 定时任务

**1. 创建计划任务**
```powershell
# 打开任务计划程序
taskschd.msc
```

**2. 创建基本任务**
- 名称: Obsidian Sync
- 触发器: 每 30 分钟
- 操作: 启动程序
- 程序: `powershell.exe`
- 参数: `-ExecutionPolicy Bypass -File "C:\obsidian_workshop\Roundabout\sync.ps1"`

### macOS LaunchAgent

创建文件 `~/Library/LaunchAgents/com.obsidian.sync.plist`:
```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>com.obsidian.sync</string>
    <key>ProgramArguments</key>
    <array>
        <string>/usr/bin/git</string>
        <string>-C</string>
        <string>/Users/你的用户名/obsidian-vault</string>
        <string>pull</string>
    </array>
    <key>StartInterval</key>
    <integer>1800</integer>
</dict>
</plist>
```

加载任务:
```bash
launchctl load ~/Library/LaunchAgents/com.obsidian.sync.plist
```

---

## 🔀 冲突解决

当多个设备同时修改同一文件时:

```bash
# 拉取时遇到冲突
git pull

# 查看冲突文件
git status

# 手动编辑冲突文件，保留需要的更改
# 冲突标记: <<<<<<< HEAD / ======= / >>>>>>> branch

# 解决后提交
git add .
git commit -m "resolve conflict"
git push
```

**Obsidian Git 插件**（推荐）
在 Obsidian 中安装 Git 插件，提供图形界面解决冲突。

---

## 📱 其他同步方案

如果不使用 Git，以下是替代方案：

### 方案 B: OneDrive / Dropbox / Google Drive
1. 将 Vault 文件夹放入同步盘
2. 在其他设备安装对应客户端
3. 从同步盘打开 Vault

**优点**: 简单，实时同步
**缺点**: 可能产生冲突文件，大文件同步慢

### 方案 C: Obsidian Sync（官方付费）
1. Obsidian 设置 → 同步
2. 购买订阅 ($8/月)
3. 登录账号即可自动同步

**优点**: 原生支持，端到端加密，版本历史
**缺点**: 需要付费

### 方案 D: Syncthing（免费 P2P）
1. 安装 Syncthing: https://syncthing.net/
2. 添加文件夹同步
3. 配对设备

**优点**: 去中心化，隐私好，免费
**缺点**: 需要设备同时在线

---

## 🔒 安全提醒

1. **不要提交敏感信息**
   - `.gitignore` 已排除插件数据
   - 不要在笔记中存储密码

2. **私有仓库**
   - GitHub 仓库建议设为 Private
   - 设置 → Manage access → 设为 Private

3. **定期备份**
   - Git 本身就是备份
   - 可额外备份到外部硬盘

---

## 🆘 常见问题

**Q: 同步后文件消失？**
A: 使用 `git log` 查看历史，`git checkout` 恢复文件

**Q: 手机无法使用 Git？**
A: 使用 Working Copy (iOS) 或 FolderSync (Android)

**Q: 同步冲突频繁？**
A: 减少自动同步频率，或使用 Obsidian Sync 官方方案

**Q: 大文件同步慢？**
A: Git LFS 管理大文件，或改用云盘方案

---

## 📝 更新日志

- 2025-04-22: 初始配置，创建 Git 仓库和同步脚本

---

**Happy Note Taking!** 📝
