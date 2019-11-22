class CreateGreats < ActiveRecord::Migration[6.0]
  def change
    create_table :greats do |t|
      t.string :name
      t.text :image
      t.string :country
      t.text :content
      t.text :content2
      t.text :content3
      t.text :explanation
      t.timestamps
    end
  end
end
