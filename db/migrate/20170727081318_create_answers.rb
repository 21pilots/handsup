class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.integer :user_id
      t.integer :question_id
      t.references :question, foreign_key: true
      t.text :title
      t.text :content

      t.timestamps
    end
  end
end
