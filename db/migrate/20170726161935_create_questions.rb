class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer :user_id
      t.text :title
      t.text :content
      t.string :major

      t.timestamps
    end
  end
end
