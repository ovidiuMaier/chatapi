class FixCorrectAnswer < ActiveRecord::Migration[5.0]
  def change
    change_column :requests, :wrong_answer, :string
  end
end
