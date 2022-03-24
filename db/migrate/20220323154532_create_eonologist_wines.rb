class CreateEonologistWines < ActiveRecord::Migration[6.1]
  def change
    create_table :eonologist_wines do |t|
      t.references :eonologist, null: false, foreign_key: true
      t.references :wine, null: false, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
