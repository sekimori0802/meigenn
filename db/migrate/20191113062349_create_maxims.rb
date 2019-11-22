class CreateMaxims < ActiveRecord::Migration[6.0]
  def change
    create_table :maxims do |t|
      t.text :content
      t.text :content2
      t.text :content3
      t.integer :great_id
      t.integer :user_id
      t.timestamps
    end
  end
end
