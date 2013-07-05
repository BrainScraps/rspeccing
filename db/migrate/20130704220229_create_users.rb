class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :country
      t.string :favorite_color
      t.text :bio

      t.timestamps
    end
  end
end
