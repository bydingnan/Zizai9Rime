# 字在9 · Rime 壳（Hamster fork）

> 上游：[imfuxiao/Hamster](https://github.com/imfuxiao/Hamster)（MIT）  
> 本 fork：https://github.com/bydingnan/Zizai9Rime  
> 本机路径：`Apps/Zizai9Rime`（独立 git，与 `Apps/Zizai9` 自研壳并列）

## 目标

把字在9切到 **librime + 雾凇 t9 全拼九键**，默认键盘 `chineseNineGrid`，引擎与字在17 / 旧 `Apps/Zizai9` **数据面分家**。

| 项 | 值 |
|---|---|
| App | `com.dingnan.zizai9rime` |
| Keyboard | `com.dingnan.zizai9rime.keyboard` |
| App Group | `group.com.dingnan.zizai9rime` |
| Team | `B9UWL2G7ZM` |
| 显示名 | 字在9 |
| URL Scheme | `zizai9rime://` |
| 默认布局 | `chineseNineGrid` |
| 词库 | 内置 `rime-ice`（含 `t9.schema.yaml`） |

首次启用后请在 App 内方案列表选择 **「中文九键 / t9」**（雾凇默认 schema_list 已含 t9）。

## 编译

```sh
cd Apps/Zizai9Rime
make framework   # 镜像：amorphobia/LibrimeKit（上游 LibrimeKit 已不可用）
make schema      # SharedSupport + rime-ice（含 t9）
xed .
```

Xcode 需在开发者账号开通 App Group `group.com.dingnan.zizai9rime`。当前 entitlements **暂未启用 iCloud**（先本地可装）。

## 与旧字在9

- `Apps/Zizai9`：自研 `Zizai9Engine` + Yuyan 风格 UI，仍可装在本机作对照。
- 本目录：Hamster 宿主 + Rime，长期主线。
- 语音包 / App Group `group.com.dingnan.zizai` **不共用**；若要迁 ASR/词库再单独立项。

## 上游差异（本 fork 已改）

1. `librimeFramework.sh` → `amorphobia/LibrimeKit@v0.1.0`
2. Bundle / App Group / Team / 显示名 → 字在9
3. `hamster.yaml` 默认 `chineseNineGrid`
4. Entitlements 精简为 App Group only
