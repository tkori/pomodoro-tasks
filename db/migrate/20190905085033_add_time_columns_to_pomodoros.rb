class AddTimeColumnsToPomodoros < ActiveRecord::Migration[5.2]
  def change
    add_column :pomodoros, :start_time, :datetime
    add_column :pomodoros, :end_time, :datetime
  end
end
