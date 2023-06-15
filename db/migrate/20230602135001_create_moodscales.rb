class CreateMoodscales < ActiveRecord::Migration[7.0]
  def change
    create_table :moodscales do |t|
      t.string :name, null:false
      t.string :scale_type, null:false

      t.timestamps
    end
  end
end
