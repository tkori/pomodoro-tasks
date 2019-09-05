class AddTaskIdToPomodoros < ActiveRecord::Migration[5.2]
  def change
    add_column :pomodoros, :task_id, :integer
  end
end
