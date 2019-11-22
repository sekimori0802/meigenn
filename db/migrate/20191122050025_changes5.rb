class Changes5 < ActiveRecord::Migration[6.0]
  def change
    add_column :greats, :likes_count, :integer
  end
end
