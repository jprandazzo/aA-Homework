class House < ApplicationRecord
    validates :address, presence: true

    has_many :residents
        foreign_key: :house_id,
        class_name: :house,
        primary_key: :id
end