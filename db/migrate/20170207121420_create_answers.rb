class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.belongs_to :question, index: true
      t.text     :answer_text
      t.boolean  :is_correct
      t.timestamps
    end
  end
end
