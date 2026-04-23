# 手动上传指南（GitHub 网页版）

如果你的网络无法使用 Git，可以直接在网页上传：

## 步骤 1：压缩 Vault
1. 打开文件资源管理器
2. 进入 `C:\obsidian_workshop\Roundabout`
3. 选中所有文件和文件夹（除了 .git 文件夹）
   - .obsidian/
   - Archive/
   - Area/
   - Project/
   - Tinkle/
   - .gitignore
   - *.md 文件
   - *.ps1 文件
4. 右键 → "发送到" → "压缩(zipped)文件夹"
5. 命名为 `obsidian_vault.zip`

## 步骤 2：上传到 GitHub
1. 打开浏览器，访问：
   https://github.com/Achilles2513/obsidian_vault

2. 点击 "uploading an existing file" 链接
   （或点击 "Add file" → "Upload files"）

3. 拖拽 zip 文件到上传区域
   或点击 "choose your files" 选择文件

4. 等待上传完成

5. 滚动到底部，点击 "Commit changes"

## 步骤 3：解压文件（GitHub 会自动处理）
上传后 GitHub 会保留文件结构。

## 注意事项
- 这个方法只适合首次上传
- 后续更新建议使用 GitHub Desktop 或 VS Code
- .git 文件夹不需要上传（是 Git 本地数据）

## 替代：逐个文件上传
如果 zip 上传失败，可以：
1. 在 GitHub 点击 "Add file" → "Create new file"
2. 逐个创建文件夹和文件
3. 复制粘贴内容
