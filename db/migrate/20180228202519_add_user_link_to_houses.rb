class AddUserLinkToHouses < ActiveRecord::Migration[5.1]
  def change
    add_reference :houses, :user, foreign_key: true
  end
end
