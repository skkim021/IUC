class AddIndexToEmail < ActiveRecord::Migration
  def change
  	add_column :schools, :remember_token, :string
    add_index :schools, :remember_token
  	add_column :schools, :password, :string 
  	add_column :schools, :email, :string 
  end
end
