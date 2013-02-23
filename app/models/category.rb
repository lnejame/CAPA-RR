class Category < ActiveRecord::Base
		# Associations
		has_many :corrective_actions
end
