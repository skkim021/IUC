class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :user_type
      t.string :student_type
      t.string :mail_pref
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :major
      t.string :semester
      t.string :test_type
      t.string :test_score
      t.float :gpa
      t.string :gtest_type
      t.string :gtest_score
      t.string :work_exp
      t.string :state1
      t.string :city1
      t.string :state2
      t.string :city2
      t.timestamps
    end
  end
end
