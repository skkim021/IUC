class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :picture
      t.string :location
      t.string :tips
      t.string :tuition

      t.timestamps
    end
  end
end
