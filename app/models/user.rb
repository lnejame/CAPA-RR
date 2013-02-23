class User < ActiveRecord::Base
		# Associations
		has_many :corrective_actions
		
		# Validations
		validates :name, :presence => true, :uniqueness => true
		validates :email, :presence => true, :uniqueness => true
		validates :mobile, :presence => true, :uniqueness => true
end
