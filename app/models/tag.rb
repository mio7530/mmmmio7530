class Tag < ApplicationRecord
    validates :name, presence: true  
    has_many :ski_tags, dependent: :destroy
    has_many :skis, through: :ski_tags
end
