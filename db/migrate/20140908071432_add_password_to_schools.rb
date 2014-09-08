class AddPasswordToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :password, :string
  end
end
