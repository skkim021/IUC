json.array! @students do |student|
	json.extract! student, :id, :user_type, :mail_pref, :first_name, :last_name, :email, :major, :semester, :test_type, :test_score, :gpa, :gtest_type, :gtest_score, :work_exp, :state1, :city1, :state2, :city2, :created_at, :updated_at, :password
end
