class AddUserRefToEntres < ActiveRecord::Migration[6.1]
  def change
    add_reference :entres, :user, null: false, foreign_key: true
  end
end