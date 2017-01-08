class AddCompanyToConnection < ActiveRecord::Migration
  def change
    add_column :connections, :company, :string
  end
end
