class CreatePomodoros < ActiveRecord::Migration[5.2]
  def change
    create_table :pomodoros do |t|

      t.timestamps
    end
  end
end
