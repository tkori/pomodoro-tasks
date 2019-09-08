class AddDetailColumnsToPomodoros < ActiveRecord::Migration[5.2]
  def change
    add_column :pomodoros, :title, :string
    add_column :pomodoros, :status, :integer
    add_column :pomodoros, :memo, :text
  end
end
