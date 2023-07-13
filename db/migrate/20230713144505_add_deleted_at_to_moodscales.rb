class AddDeletedAtToMoodscales < ActiveRecord::Migration[7.0]
  def change
    add_column :moodscales, :deleted_at, :datetime
  end
end
