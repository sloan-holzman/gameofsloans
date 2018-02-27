class AddAttributesHouses < ActiveRecord::Migration[5.1]
  def change
    add_column :houses, :created_at, :datetime
    add_column :houses, :updated_at, :datetime
    add_column :houses, :name, :string
    add_column :houses, :motto, :string
  end
end
