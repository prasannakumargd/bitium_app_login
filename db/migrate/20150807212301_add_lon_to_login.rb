class AddLonToLogin < ActiveRecord::Migration
  def change
    add_column :logins, :lon, :string
  end
end
