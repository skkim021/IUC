class RemovePasswordFromSchools < ActiveRecord::Migration
  def change
    remove_column :schools, :password, :string
    remove_column :schools, :remember_token, :string
  end
end
