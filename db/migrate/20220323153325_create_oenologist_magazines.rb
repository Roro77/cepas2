class CreateOenologistMagazines < ActiveRecord::Migration[6.1]
  def change
    create_table :oenologist_magazines do |t|
      t.references :oenologist, null: false, foreign_key: true
      t.references :magazine, null: false, foreign_key: true
      t.string :job

      t.timestamps
    end
  end
end
