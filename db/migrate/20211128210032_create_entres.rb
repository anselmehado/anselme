class CreateEntres < ActiveRecord::Migration[6.1]
  def change
    create_table :entres do |t|
      t.date :date
      t.float :montant_in
      t.string :motif

      t.timestamps
    end
  end
end
