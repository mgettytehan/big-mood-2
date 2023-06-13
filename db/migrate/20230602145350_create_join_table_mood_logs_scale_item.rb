class CreateJoinTableMoodLogsScaleItem < ActiveRecord::Migration[7.0]
  def change
    create_table :mood_logs_scale_items, id: false do |t|
      t.references :mood_logs, null: false, foreign_key: true
      t.references :scale_items, null:false, foreign_key: true
    end
  end
end
