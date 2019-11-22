class Changes < ActiveRecord::Migration[6.0]
  def change
    add_column :greats, :tag, :string
  end
end
