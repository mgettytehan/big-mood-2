class CreateScaleItems < ActiveRecord::Migration[7.0]
  def change
    create_table :scale_items do |t|
      t.integer :index, null:false
      t.string :alias, null:false
      t.references :moodscale, null: false, foreign_key: true

      t.timestamps
    end
  end
end
