class Changes2 < ActiveRecord::Migration[6.0]
  def change
    add_column :greats, :user_id, :integer
  end
end
