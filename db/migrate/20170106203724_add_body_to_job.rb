class AddBodyToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :body, :string
  end
end
