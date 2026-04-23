# VS Code 推送指南

## 步骤 1：打开 Vault 文件夹
1. 打开 Visual Studio Code
2. File → Open Folder
3. 选择：`C:\obsidian_workshop\Roundabout`

## 步骤 2：安装 GitHub 扩展（可选）
1. 左侧扩展图标（或 Ctrl+Shift+X）
2. 搜索 "GitHub"
3. 安装 "GitHub Pull Requests and Issues"

## 步骤 3：配置 Git（首次使用）
在 VS Code 终端（Ctrl+`）中执行：
```bash
git config user.name "你的用户名"
git config user.email "你的邮箱"
```

## 步骤 4：发布到 GitHub
1. 左侧源代码管理图标（或 Ctrl+Shift+G）
2. 点击 "..."（更多操作）
3. 选择 "Publish to GitHub"
4. 登录 GitHub 账号（如果提示）
5. 选择仓库名：`obsidian_vault`
6. 选择 "Public"
7. 点击 "Publish"

## 步骤 5：验证
发布后，访问：
https://github.com/Achilles2513/obsidian_vault

应该能看到所有文件。

## 后续使用
- 修改文件后，左侧会显示数字（表示更改数量）
- 点击 + 号暂存更改
- 填写提交信息
- 点击 ✓ 提交
- 点击 ... → Push 推送到 GitHub
