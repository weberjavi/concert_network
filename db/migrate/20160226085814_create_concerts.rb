class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :artist
      t.string :venue
      t.datetime :date
      t.string :city
      t.text :description
      t.integer :price

      t.timestamps null: false
    end
  end
end
