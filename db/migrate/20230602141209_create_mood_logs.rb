class CreateMoodLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :mood_logs do |t|
      t.string :notes

      t.timestamps
    end
  end
end
