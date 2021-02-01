# README

## areasテーブル

| Column | Type   | Options                   |
|--------|--------|---------------------------|
| name   | string | null: false               |


### Association

- has_many :tweets
- has_many :favorites


## tweetsテーブル

| Column     | Type       | Options                        |
|------------|------------|--------------------------------|
| area       | references | null: false, foreign_key: true |
| shop_name  | string     | null: false                    |
| genre      | string     | null: false                    |
| price      | integer    | null: false                    |
| evaluation | integer    | null: false                    |
| impression | text       | null: false                    |

### Association

- belongs_to :area
- has_many :favorites


## favoritesテーブル

| Column | Type       | Options                        |
|--------|------------|--------------------------------|
| area   | references | null: false, foreign_key: true |
| tweet  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item