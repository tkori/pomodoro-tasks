class RenameTaskIdToProjectIdOfPomodoros < ActiveRecord::Migration[5.2]
  def change
    rename_column :pomodoros, :task_id, :project_id
  end
end