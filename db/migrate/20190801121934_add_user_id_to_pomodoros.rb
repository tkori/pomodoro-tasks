class AddUserIdToPomodoros < ActiveRecord::Migration[5.2]
  def change
    add_column :pomodoros, :user_id, :integer
  end
end
