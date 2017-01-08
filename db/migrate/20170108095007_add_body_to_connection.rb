class AddBodyToConnection < ActiveRecord::Migration
  def change
    add_column :connections, :body, :string
  end
end
