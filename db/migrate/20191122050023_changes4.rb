class Changes4 < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :tag, :string
    add_column :users, :man, :string
  end
end
