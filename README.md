# テーブル設計

## users テーブル

|Column    |Type  |Option     |
|----------|------|-----------|
|email     |string|null: false|
|password  |string|null: false|
|name      |string|null: false|
|profile   |text  |null: false|
|occupation|text  |null: false|
|position  |text  |null: false|

### Association

- has_many :prototypes
- has_many :comments, dependent: :destroy

## prototypes テーブル

|Column    |Type              |Option     |
|----------|------------------|-----------|
|title     |string            |null: false|
|catch_copy|text              |null: false|
|concept   |text              |null: false|
|image     |ActiveStorageで実装|           |
|user      |references        |           |

### Association

- has_many :comments, dependent: :destroy
- belongs_to :user

## comments テーブル

|Column   |Type      |Option     |
|---------|----------|-----------|
|text     |text      |null: false|
|user     |references|           |
|prototype|references|           |

### Association

- belongs_to :users
- belongs_to :prototypes