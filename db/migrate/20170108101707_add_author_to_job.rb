class AddAuthorToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :author, :string
  end
end
