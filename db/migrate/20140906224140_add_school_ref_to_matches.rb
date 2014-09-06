class AddSchoolRefToMatches < ActiveRecord::Migration
  def change
    add_reference :matches, :school, index: true
  end
end
