class House < ApplicationRecord
  validates :name, :motto, {presence: true}
  has_many :characters, dependent: :destroy
end
