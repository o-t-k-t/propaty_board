class CreatePropaties < ActiveRecord::Migration[5.0]
  def change
    create_table :propaties do |t|
      t.string :name, null: false
      t.integer :rent, null: false
      t.string :address, null: false
      t.integer :age, null: false
      t.string :note

      t.timestamps
    end
    add_index :propaties, :address, unique: true
  end
end
