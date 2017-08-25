class CreateMajors < ActiveRecord::Migration[5.1]
  def change
    create_table :majors do |t|
      t.string :title
      t.string :ancestry

      t.timestamps
    end
    add_index :majors, :ancestry
  end
end
