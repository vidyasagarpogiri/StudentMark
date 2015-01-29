class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :userid
      t.string :string
      t.string :password
      t.string :password

      t.timestamps
    end
  end
end
