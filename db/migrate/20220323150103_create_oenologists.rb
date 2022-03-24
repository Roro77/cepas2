class CreateOenologists < ActiveRecord::Migration[6.1]
  def change
    create_table :oenologists do |t|
      t.string :name, null: false
      t.integer :age, null: false
      t.string :nationality, null: false

      t.timestamps
    end
  end
end
