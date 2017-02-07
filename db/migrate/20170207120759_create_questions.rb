class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string     :category
      t.text       :question_text
      t.timestamps
    end
  end
end