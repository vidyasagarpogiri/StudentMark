class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :branch
      t.string :year
      t.float :percentage

      t.timestamps
    end
  end
end
