# README

介護記録電子管理システム

概要
高齢者施設でのご利用者様の健康管理を共有する事を目的としたアプリケーション

コンセプト
CRUD機能を基本としてPCにうといスタッフでもわかりやすいシンプルさ。

バージョン
Ruby 2.6.5
Ruby on Rails 5.2.4

機能一覧
１、ユーザー(スタッフ)ログイン機能
２、ユーザー新規登録機能
        名前、パスワード必須
３、利用者様連絡事項表示
        利用者様に関して共有する情報をログイン後に表示
４、利用者様詳細表示機能
        データ編集は管理者のみ
５、介護記録作成機能
６、介護記録詳細表示
        どのユーザーが記入したかも表示
６、介護記録編集機能
７、介護記録削除機能
        編集、削除は記入したユーザーのみ(あるいは管理者)        
８、介護記録ラベル機能
        実施、未実施で判定する記録はラベル表示とする
        これは施設によって異なるため、今回は入浴、体操参加のチェック

カタログ設計

https://docs.google.com/spreadsheets/d/13allHuVFfwKXJ88F_V8bZ1S8abB0fkjBP0AmMAYhPMA/edit#gid=0

テーブル定義

https://docs.google.com/spreadsheets/d/1XxphqQlXyMT1oYOvfl0YuZHsZAMdDfl72m7rFfBwMFI/edit#gid=0

画面遷移図

https://cacoo.com/diagrams/IEG62r6Xmedv94DR/00F34?reload_rt=1592246944696_0

ワイヤーフレーム

https://cacoo.com/diagrams/H71RlhIEmIIB2Ndo/C9B6C?reload_rt=1592245686170_0

使用予定gem

devise
kaminari
ransack
cancancan




                              

