achievemant6 << cubes    remake


cubes DB設計
---
## user_group-table
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Asociation
- belongs_to :group
- belongs_to :user
---

## user-table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|email|string|null: false, unique: true|

### Asociation
- has_many :groups, through: :user_groups
- has_many :user_groups
- has_many :tweets
- has_many :messages
- has_many :articles
- has_one :account
---

## account-table
|Column|Type|Options|
|------|----|-------|
|image|string|null: true|
|first_name|string|null: true|
|last_name|string|null: true|
|profile|text|null: true|
|link1|string|null: true|
|link2|string|null: true|
|link3|string|null: true|
|user_id|integer|null: false, foreign_key: true|

### Asociation
- belongs_to :user
---


### Asociation
- has_many :groups, through: :user_groups
- has_many :user_groups
- has_many :tweets
- has_many :messages
- has_many :articles
---

## group-table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|

### Asociation
- has_many :messages
- has_many :users, through: :user_groups
- has_many :user_groups
---

## message-table
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|image|string|null: true|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Asociation
- belongs_to :user
- belongs_to :group
---

## article-table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|text|text|null: false|
|image|string|null: true|
|user_id|integer|null: false, foreign_key: true|

### Asociation
- belongs_to :user
---

## tweet-table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|text|text|null: false|
|image|string|null: true|
|user_id|integer|null: false, foreign_key: true|

### Asociation
- belongs_to :user
---
