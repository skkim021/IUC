class AddStudentRefToMatches < ActiveRecord::Migration
  def change
    add_reference :matches, :student, index: true
  end
end
