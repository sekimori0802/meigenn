class Changes3 < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :avater, :text
  end
end
