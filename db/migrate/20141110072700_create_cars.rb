class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name
      t.string :string
      t.string :brand
      t.string :string
      t.string :colour
      t.string :string

      t.timestamps
    end
  end
end
