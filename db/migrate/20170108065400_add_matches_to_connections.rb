class AddMatchesToConnections < ActiveRecord::Migration
  def change
    add_column :connections, :matches, :array
  end
end
