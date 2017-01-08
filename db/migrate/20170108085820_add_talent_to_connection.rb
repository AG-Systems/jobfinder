class AddTalentToConnection < ActiveRecord::Migration
  def change
    add_column :connections, :talent, :string
  end
end
