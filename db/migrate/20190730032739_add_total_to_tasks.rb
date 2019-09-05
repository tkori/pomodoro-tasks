class AddTotalToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :total, :integer, null: false
  end
end
