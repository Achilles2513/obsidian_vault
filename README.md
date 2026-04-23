# Obsidian Vault - 多设备同步

这是我的 Obsidian 知识库，支持多设备同步。

## 📂 Vault 结构

```
.
├── 📁 .obsidian/           # Obsidian 配置和插件
├── 📁 Archive/             # 归档笔记
├── 📁 Area/                # 领域知识
├── 📁 Project/             # 项目笔记
├── 📁 Tinkle/              # 闪念笔记
├── 📄 .gitignore           # Git 忽略规则
├── 📄 sync.ps1             # 自动同步脚本
└── 📄 SYNC_GUIDE.md        # 详细同步指南
```

## 🔄 同步状态

| 设备 | 状态 | 上次同步 |
|------|------|----------|
| Windows PC | ✅ 主设备 | 当前 |
| 其他设备 | ⏳ 待配置 | - |

## 🚀 快速开始

### 在其他设备上使用

**方法 1: Git 克隆**
```bash
git clone https://github.com/Achilles2513/obsidian_vault.git
```

**方法 2: GitHub Desktop**
1. 打开 GitHub Desktop
2. File → Clone repository
3. 选择 `Achilles2513/obsidian_vault`

**方法 3: 下载 ZIP**
1. 点击 Code → Download ZIP
2. 解压后用 Obsidian 打开文件夹

## 📝 使用指南

- 详细同步教程: [SYNC_GUIDE.md](./SYNC_GUIDE.md)
- GitHub Desktop: [GITHUB_DESKTOP_GUIDE.md](./GITHUB_DESKTOP_GUIDE.md)
- VS Code: [VS_CODE_GUIDE.md](./VS_CODE_GUIDE.md)
- 手动上传: [MANUAL_UPLOAD_GUIDE.md](./MANUAL_UPLOAD_GUIDE.md)

## 🔧 CLI-Anything 集成

本 Vault 已配置 CLI-Anything，支持命令行操作：

```bash
# 查看状态
cli-anything-obsidian server status

# 列出文件
cli-anything-obsidian vault list

# 搜索笔记
cli-anything-obsidian search simple "关键词"
```

## 🔒 隐私说明

- 笔记内容为个人知识库
- 使用 Git 进行版本控制
- 敏感信息不建议放入此仓库

---

**Created**: 2025-04-22  
**Sync Method**: Git + GitHub
