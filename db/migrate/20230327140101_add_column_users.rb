class AddColumnUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string 
    add_column :users, :player_uid, :integer
    add_column :users, :world_rank, :integer
    add_column :users, :introduction, :text
  end
end
