class ChangeIndex < ActiveRecord::Migration
  def change
    
    add_index :cats, :name, unique: true
    
  end
end
