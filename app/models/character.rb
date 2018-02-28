class Character < ApplicationRecord
  validates :name, {presence: true}
  belongs_to :house
  has_many :tags, dependent: :destroy
  has_many :categories, through: :tags
end
