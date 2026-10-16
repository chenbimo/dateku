# 安装与引入

dateku 暂未发布到 [mooncakes](https://mooncakes.io)。现在没有可用的版本号，也没有稳定 API；下面的写法是骨架定型时就锁定的接入方式，发布后照抄即可：

```bash
moon add chensuiyi/dateku
```

之后在模块内以 `@dateku` 前缀使用：

```moonbit
fn main {
  println(@dateku.hello())
}
```

## 版本

文档右上角的版本号取自 `moon.mod` 的 `version` 字段，与发布保持一致。当前 `0.1.0` 只是骨架版本，未打 release tag，不构成可用性承诺。
