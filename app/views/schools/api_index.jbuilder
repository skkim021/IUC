json.schools do |json|
	json.array! @schools do |school|
		json.extract! school, :id, :name, :picture, :location, :tips, :tuition, :email, :password, :created_at, :updated_at
	end
end