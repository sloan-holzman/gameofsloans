class Category < ApplicationRecord
  validates :name, {presence: true}
  has_many :tags, dependent: :destroy
  has_many :characters, through: :tags
end
