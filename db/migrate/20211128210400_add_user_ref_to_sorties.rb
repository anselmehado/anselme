class AddUserRefToSorties < ActiveRecord::Migration[6.1]
  def change
    add_reference :sorties, :user, null: false, foreign_key: true
  end
end
