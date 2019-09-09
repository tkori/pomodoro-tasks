# Pomodoro Tasks（※現在制作中）

## URL
https://pomodoro-tasks.herokuapp.com

## 使い方
[![Image from Gyazo](https://i.gyazo.com/e6e9302ea5382a033ffa32512e3976a0.gif)](https://gyazo.com/e6e9302ea5382a033ffa32512e3976a0)

# 制作理由
- 漫然と作業することを防ぐために、ポモドーロ・テクニックを利用できるアプリケーションを求めていたため
- ポモドーロ・テクニックの活用と同時に作業時間を記録して管理するアプリケーションを求めていたため

# 工夫点
- React.js導入（予定）

# 苦労した点
- Ajax通信を利用したタイマー管理

# これから実装したい機能
- 作業ログの解析機能

# DB設計
## pomodorosテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|
|status|integer|
|start_time|datetime|
|end_time|datetime|
|user_id|integer|foreign_key: true|
|project_id|integer|foreign_key: true|
|memo|text|

## projectsテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|
|user_id|integer|foreign_key: true|

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|
|email|string|
|password|string|
|password_confirmation|string|