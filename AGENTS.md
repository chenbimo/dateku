# dateku 仓库约定

通用规范见 `moonbit/scripts/NEW-PROJECT.md`(工作区公共仓库,不在本仓库内),本文件只写本仓库特有的值。

## 工具链

- 以 WSL(Debian)为准,路径走 `/mnt/c/...`
- 构建目录:`_build-wsl`

## 常用命令

```bash
# 快检(改动 src/ 或 moon.mod 后)
wsl -d Debian --cd /mnt/c/codes/moonbit/dateku bash scripts/devkit/verify.sh

# 全量(工作区 devkit.sh)
wsl -d Debian --cd /mnt/c/codes/moonbit bash scripts/devkit.sh check dateku

# MoonBit 测试
wsl -d Debian --cd /mnt/c/codes/moonbit/dateku moon test
```

## 验证分档

- 只改 `src/**` 或 `moon.mod`:跑 verify.sh(编译 + 测试)
- 生成物无关改动(README、LICENSE、AGENTS):无需跑构建
- 生成物统一改动:`moonbit/scripts` 改共享逻辑后 `bash devkit.sh sync`,本仓库不手改

## 提交格式

```text
[dateku](类型) 中文一句话
```

类型:`feat` / `fix` / `docs` / `refactor` / `test` / `chore`。由 `commit-msg` 钩子强制校验。

## Git Hooks

接入方式与要求见 `moonbit/scripts/NEW-PROJECT.md` 第二节,此处不展开。本仓库已设 `core.hooksPath = .githooks`。

## 硬性约定

方向未定,约定随后补。当前唯一的实质约定:不提供业务 API,仅有骨架占位。
