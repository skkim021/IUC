json.school do |json|
	json.extract! @school, :id, :name, :picture, :location, :tips, :tuition, :email, :password, :created_at, :updated_at
end