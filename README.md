# dotfiles

dotfilesとは、個人の設定ファイルおよびツールを管理するためのリポジトリである。

## 使い方

## 開発方針

dotfilesでは、チケット駆動開発を採用する。
チケット駆動開発の進め方は、以下のとおりである。

1. 実装したい機能について、チケット（GitHubではIssueと呼ばれる）を発行する。
    - チケット用のテンプレートについては、「チケット（Issue）の書き方」を参照のこと。
1. チケットに紐づくブランチを作成する。
    - ブランチは、ローカルではなく、必ずGitHubから作成する。
1. チケットに記載されている内容に基づいて、実装を行う。
1. Pull Requestを発行する。
    - Pull Request用のテンプレートについては、「Pull Requestの書き方」を参照のこと。
1. マージする

### チケット（Issue）の書き方
### Pull Requestの書き方

### ブランチ規約

### コミットメッセージ規約

[Conventional Commits](https://www.conventionalcommits.org/ja/v1.0.0/)に従って、以下のような形式で記載する。

```
<type>[optional scope]: <description>

[optional body]
```

`type`および`description`は必須とする。`scope`および`body`は任意とする。


#### type

`type`はlowercase（小文字）で表記し、次のいずれかの指定が必須である。


| name     | description                                |
| -------- | ------------------------------------------ |
| build    | ビルド                                     |
| ci       | CI                                         |
| chore    | 雑事（カテゴライズする必要ないようなもの） |
| docs     | ドキュメント                               |
| feat     | 新機能                                     |
| fix      | バグフィックス                             |
| perf     | パフォーマンス                             |
| refactor | リファクタリング                           |
| revert   | コミット取り消し（git revert）             |
| style    | コードスタイル修正                         |
| test     | テスト                                     |
| init     | 初期化                                     |

#### scope

`scope`は、`type`の後に半角括弧`()`を付けて表し、lowercase（小文字）で表記する。
次のいずれかの指定が必須である。

| name | description                |
| ---- | -------------------------- |
| git  | `.gitconfig`, `.gitignore` |
| bash | `.bashrc`, `.bash_profile` |

#### description

`description`は、`scope`の後のコロンとスペースの直後に、**英語の命令形・現在形で**記載する。

#### body
`subject`の詳細情報が必要な場合は、`body`に記載する。
`body`を挿入する際は、その前行を空行とする。
対象のIssueが存在する場合は、`Refs: #123`と記載する。

---

## Author
- **Jun Kato**
  - GitHub : [a7p11t](https://github.com/a7p11t)
