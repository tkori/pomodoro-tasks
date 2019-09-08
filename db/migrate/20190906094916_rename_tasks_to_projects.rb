class RenameTasksToProjects < ActiveRecord::Migration[5.2]
  def change
    rename_table :tasks, :projects
  end
end
