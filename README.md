# dotfiles

dotfilesとは、個人の設定ファイルおよびツールを管理するためのリポジトリである。

## 使い方
セットアップスクリプトを実行する。

```bash
git clone https://github.com/a7p11t/dotfiles.git $HOME/dotfiles
`./setup.sh`
```

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
GitHubが公開している[Issueの作成方法](https://docs.github.com/ja/issues/tracking-your-work-with-issues/creating-an-issue)にしたがって、Issueを作成する。
テンプレートは、Feature requestを使用する。

Issueは日本語で記載する。
Issue内の文章については句点を打つが、タイトルや文でない箇条書きについては句点を打たない。

### Pull Requestの書き方

### ブランチ規約

ブランチは、必ずIssueから作成する。
作成方法については、GitHubが公開している[Issue用のブランチの作り方](https://docs.github.com/ja/issues/tracking-your-work-with-issues/creating-a-branch-for-an-issue)を参照する。

ブランチ名は、カテゴリ（Category）、説明（Description）、Issue参照（Reference）で構成される。
カテゴリと説明の間はスラッシュ`/`で区切り、説明とIssue参照の間は`_`で区切る。

```
git branch <Category>/<Description>_#<Reference>
```

#### カテゴリ（Category）
- `feature`
    - 機能の追加やリファクタリング、削除を行う際に使用する。
- `fix`
    - 個人用ツール開発において、バグを修正する際に使用する。
- `hotfix`
    - サービス開発において、バグを修正する際に使用する。
- `bugfix`
    - サービス開発において、緊急時の対応のため、一時的な解決策や通常のプロセスに従わずにバグを修正する際に使用する。
- `test`
    - 特定のIssueに関連付かない場合に使用する。

#### 説明（Description）

ブランチの説明を簡潔に記載する。
基本的には、Issueのタイトルを英訳したものを使用し、kebab-caseにする。

#### Issue参照（Reference）

ブランチをIssueに関連付けるために、Issue番号を付与する。番号のプレフィックスには、`#`を付けること。
特定のIssueに関連付かないブランチの場合は、`no-ref`と付けること。
- `#<Issue Number>`
- `no-ref`

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
