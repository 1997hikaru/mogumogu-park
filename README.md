# テーブル設計

## sellersテーブル
| Column             | Type     | Options                    |
| --------           | -------- | --------                   |
| nickname           | string   | null: false                |
| email              | string   | null: false, unique: true  |
| encrypted_password | string   | null: false                |
| last_name          | string   | null: false                |
| first_name         | string   | null: false                |
| last_name_reading  | string   | null: false                |
| first_name_reading | string   | null: false                |
| birthday           | date     | null: false                |
| group_name         | string   | null: false                |
| group_name_reading | string   | null: false                |

### Association
- has_many :items


## buyersテーブル
| Column             | Type     | Options                    |
| --------           | -------- | --------                   |
| nickname           | string   | null: false                |
| email              | string   | null: false, unique: true  |
| encrypted_password | string   | null: false                |
| last_name          | string   | null: false                |
| first_name         | string   | null: false                |
| last_name_reading  | string   | null: false                |
| first_name_reading | string   | null: false                |
| birthday           | date     | null: false                |

### Association
- has_many :purchases
- has_many :comments


## itemsテーブル
| Column             | Type       | Options                         |
| --------           | --------   | --------                        |
| user               | references | null: false, foreign_key: true  |
| item_name          | string     | null: false                     |
| explanation        | text       | null: false                     |
| category_id        | integer    | null: false                     |
| condition_id       | integer    | null: false                     |
| delivery_cost_id   | integer    | null: false                     |
| prefecture_id      | integer    | null: false                     |
| days_delivery_id   | integer    | null: false                     |
| price              | integer    | null: false                     |

### Association
- belongs_to :seller
- belongs_to :buyer
- has_one :purchase
- has_many :comments


## purchaseテーブル
| Column             | Type      | Options                        |
| --------           | --------  | --------                       |
| seller             | reference | null: false, foreign_key: true |
| buyer              | reference | null: false, foreign_key: true |
| item               | reference | null: false, foreign_key: true |

### Association
- belongs_to :seller
- belongs_to :buyer
- belongs_to :item
- has_one :address

## addressesテーブル
| Column             | Type      | Options                        |
| --------           | --------  | --------                       |
| postal_code        | string    | null: false                    |
| prefecture_id      | integer   | null: false                    |
| municipal          | string    | null: false                    |
| address            | string    | null: false                    |
| building_name      | string    |                                |
| phone_number       | string    | null: false                    |
| purchase           | reference | null: false, foreign_key: true |

### Association
- belongs_to :purchase
