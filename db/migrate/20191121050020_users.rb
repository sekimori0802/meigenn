class Users < ActiveRecord::Migration[6.0]
  class DropUsers < ActiveRecord::Migration[6.0]
    def up
      drop_table :users
    end
  
    def down
      create_table :users do |t|
        t.string :name
      end
    end
  end
end
