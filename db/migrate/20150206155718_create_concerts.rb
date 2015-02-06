class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.datetime :date
      t.text :venue
      t.text :city
      t.decimal :ticket_price
      t.text :artist
      t.text :description

      t.timestamps null: false
    end
  end
end
