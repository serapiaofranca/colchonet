class RemovePassworeFromUsers < ActiveRecord::Migration[6.1]
 # def change
 # end

  def up
    remove_column :users, :password 
  end

  def down
    add_column :users, :password, :string
  end
end
