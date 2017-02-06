class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.timestamps
      t.string     :category
      t.text       :question
      t.integer    :correct_answer
      t.string     :wrong_answer
    end
  end
end
