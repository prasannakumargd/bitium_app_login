class AddLatToLogin < ActiveRecord::Migration
  def change
    add_column :logins, :lat, :string
  end
end
