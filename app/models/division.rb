class Division < ActiveRecord::Base
		# Associations
		has_many :corrective_actions
		
		# Validations
		validates :name, :uniqueness => true
end
