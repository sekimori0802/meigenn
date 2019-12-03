# README

### 作成の背景
---
tech-expertで主に学んできたruby on railsをフレームワークとしたアプリ作成の復習を行うため。


### アプリケーション概要
---
ruby on railsをフレームワークとし、名言の投稿サイトを作成しました。
railsの基本機能である投稿、詳細、編集、消去、検索機能は全て搭載しています。
またgemのdeviseを使用しマイページ機能も作成しました。
フロントサイドは、主にhamlとscssを使用し作成しました。

### Githubリポジトリ
---
https://github.com/sekimori0802/meigenn
### 開発状況
---
### 開発環境
---
ruby/Ruby on Rails/MySQL/Github/Visual Studio Code/jQuery/haml/scss
- 開発期間と平均作業時間
- 開発期間：約1週間
- 1日あたりの平均作業時間：約6時間
#### 開発体制
- 人数：1人

### 機能一覧
---
- マイページ機能
![b1f812b8912521c9c37c13d20affd9e3 (1)](https://user-images.githubusercontent.com/54921622/69948492-14850a00-1533-11ea-8428-c57b83ce91bb.gif)
- 投稿機能
- 編集機能
- 消去機能
- いいね機能
![126f09a74d48a45524c8727c36b3c5e2](https://user-images.githubusercontent.com/54921622/69948858-b3116b00-1533-11ea-8f69-9ba946f5dfb5.gif)
- タグ検索機能
![3f6c2d7c119af3363fad4ff8e673bc16](https://user-images.githubusercontent.com/54921622/69949047-11d6e480-1534-11ea-8188-c2b9de7d2cea.gif)
- ワード検索
- ランキング機能
 ### 工夫した点
 ---
 - ユーザーページの閲覧
 詳細ページから投稿者のページに飛ぶことが出来ます。
 ![84de5a086772d70df00c7848636d27ad](https://user-images.githubusercontent.com/54921622/69950700-2e285080-1537-11ea-939f-b9315814ef68.gif)
- 詳細ページでユーザー毎に条件分岐
投稿者とその他ユーザー、ログインしていないユーザーで表示するボタンを変更
![e88f462c9438316fa60dce7dd2f647bd](https://user-images.githubusercontent.com/54921622/69952731-28346e80-153b-11ea-8ed4-df5cc0fa4c96.gif)
- いいね数のランキング機能
いいねの数でランキングを表示。いいねを使えるのはサイトに登録を行ったユーザーのみにしています。
![7b917d99ad8192354392d46605d04cd9](https://user-images.githubusercontent.com/54921622/70014359-e567aa80-15bd-11ea-8a10-54915c399487.gif)
### 苦労した点
---
- 自身のマイページだけでは無く他者のページに訪問出来る機能をつけた点。
- いいね機能の非同期化。またランキング機能をつけた点。
- タグ検索の実装をした点。


