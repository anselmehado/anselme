class CreateOperations < ActiveRecord::Migration[6.1]
  def change
    create_table :operations do |t|
      t.date :date
      t.float :montantsort
      t.string :motif

      t.timestamps
    end
  end
end
