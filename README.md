# AGC バックエンド (apiサーバー)

## プロジェクト概要

このリポジトリは、アニメゲームセンター (AGC) ウェブサイトのバックエンドAPIです。ユーザーがアニメキャラクターや感情を検索し、関連するアニメシーンの情報を取得できるようにします。

## セットアップ

このバックエンドを起動するには、事前に Ruby, Rails, PostgreSQL がインストールされている必要があります。

**リポジトリをクローン:**

   ```bash
   git clone https://github.com/Arif-Sofi/AGC-Rails-API
   cd AGC-Rails-API
   ```
   データベースを設定: config/database.yml を編集し、PostgreSQLの設定を記述してください。
   ```bash
   rails db:migrate db:seed
   rails server
