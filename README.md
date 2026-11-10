# 大学レポート用 Typst テンプレート

大学の授業や実験レポートで使用できる、Typst製のレポートテンプレートです。

タイトル、授業名、氏名、学籍番号、提出日などを指定するだけで、レポートの書式を自動的に整えることができます。

Typst初心者でも利用できるように、設定をできるだけシンプルにしています。

## 主な機能

- A4サイズのレポート作成
- フォント・文字サイズ・余白の変更
- タイトルや提出情報の自動配置
- 見出しの自動番号付け
- ページ番号の自動表示
- 目次の表示・非表示の切り替え
- 数式番号の自動付与
- 図・表のキャプションと相互参照
- 日本語レポート向けの設定
- PDF形式での出力

## 1. 必要な環境

- Typst CLI
- VS Code（推奨）
- Tinymist（VS Code拡張機能）
- 日本語フォント（游明朝など）

Typst公式サイト：

https://typst.app/

### Windowsでのインストール

PowerShellで以下を実行します。

```powershell
winget install --id Typst.Typst -e
```

インストールできたか確認します。

```powershell
typst --version
```

VS Codeを使用する場合は、拡張機能から「Tinymist」をインストールしてください。

## 2. ファイル構成

```text
university-report/
├── template.typ
├── reports/
│   ├── english.typ
│   ├── physics.typ
│   └── research.typ
└── images/
```

- `template.typ`：共通のレイアウトや書式設定
- `reports/`：レポート本文を保存するフォルダ
- `images/`：レポートで使用する画像

※ 配布されているファイル構成に合わせて適宜変更してください。

## 3. 基本的な使い方

`reports/` フォルダに新しい `.typ` ファイルを作成します。

以下は記述例です。

```typst
#import "../template.typ": report

#show: report.with(
  title: [レポートのタイトル],
  course: [授業名],
  student-name: [氏名],
  student-id: [学籍番号],
  date: [提出日],
  font-size: 11pt,
  page-margin: 25mm,
  show-toc: false,
)

= はじめに

ここにレポートの本文を書きます。

= 本論

ここに考察などを書きます。

= まとめ

ここに結論を書きます。
```

`template.typ` が対応している場合、`font-size` や `page-margin` などの引数で書式を変更できます。

## 4. 設定項目

| 設定 | 説明 | 使用例 |
|---|---|---|
| `title` | レポートのタイトル | `[実験レポート]` |
| `course` | 授業名 | `[物理学実験]` |
| `student-name` | 氏名 | `[山田太郎]` |
| `student-id` | 学籍番号 | `[00000000]` |
| `date` | 提出日 | `[2026年11月10日]` |
| `font-size` | 本文文字サイズ | `11pt` |
| `page-margin` | ページの余白 | `25mm` |
| `show-toc` | 目次の表示 | `true` / `false` |

各設定は必要に応じて変更してください。

## 5. 見出しの書き方

Typstでは、`=` の数で見出しの階層を指定します。

```typst
= 第1階層

== 第2階層

=== 第3階層
```

見出し番号は自動的に設定されます。

## 6. 数式の書き方

数式は `$` で囲んで記述します。

```typst
$ x^2 + y^2 = z^2 $
```

分数や平方根も使用できます。

```typst
$ x = (-b plus.minus sqrt(b^2 - 4 a c))/(2 a) $
```

数式にラベルを付けると、本文から参照できます。

```typst
$ v = x/t $ <velocity>

@velocity より、速度を計算できる。
```

## 7. 表の挿入

```typst
#figure(
  table(
    columns: 2,

    table.header(
      [*時間 (s)*], [*距離 (m)*],
    ),

    [1.0], [2.5],
    [2.0], [5.0],
    [3.0], [7.5],
  ),
  caption: [測定結果],
) <result-table>
```

本文からは次のように参照できます。

```typst
@result-table に測定結果を示す。
```

## 8. 画像の挿入

画像ファイルを `images/` フォルダに保存します。

`reports/` 内の `.typ` ファイルから画像を読み込む例：

```typst
#figure(
  image("../images/sample.png", width: 70%),
  caption: [実験装置],
) <apparatus>
```

本文から画像を参照できます。

```typst
@apparatus に実験装置を示す。
```

## 9. PDFの出力

PowerShellでプロジェクトのルートディレクトリへ移動し、以下のコマンドを実行してください。

```powershell
typst compile --root . reports/english.typ
```

成功すると、`reports/english.pdf` が生成されます。

ファイルを監視して自動更新したい場合は、次のコマンドを使います。

```powershell
typst watch --root . reports/english.typ
```

## 10. 注意事項

- 授業担当者が指定した書式がある場合は、その指示を優先してください。
- フォントがインストールされていない場合、別のフォントに置き換わることがあります。
- レポートの提出前には、PDFの表示崩れやページ番号を確認してください。
- GitHubに提出用レポートを公開する際は、氏名や学籍番号などの個人情報に注意してください。

## 11. 参考リンク

- Typst公式サイト：https://typst.app/
- Typst公式ドキュメント：https://typst.app/docs/
- Tinymist：https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist

## ライセンス

利用条件は、リポジトリ内の `LICENSE` ファイルを参照してください。ライセンスが設定されていない場合は、公開されているだけで自由な再配布・改変が認められるわけではありません。
