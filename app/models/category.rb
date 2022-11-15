class Category < ApplicationRecord
    has_many :posts

    enum category_type: {
        "General" => 0,
        "News" => 1,
        "Sports" => 2,
    }
end
