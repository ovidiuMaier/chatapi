class FixMigration < ActiveRecord::Migration[5.0]
  def change
    change_column :requests, :correct_answer, :string
  end
end
