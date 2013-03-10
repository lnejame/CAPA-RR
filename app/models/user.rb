class User < ActiveRecord::Base
		# Associations
		has_many :corrective_actions
		
		# Validations
		validates :name, :presence => true, :uniqueness => true
		validates :email, :presence => true, :uniqueness => true
		validates :mobile, :uniqueness => true
		validates :address1, :presence => true
		validates :city, :presence => true
		validates :state, :presence => true
		validates :country, :presence => true
		validates :zipcode, :presence => true, :numericality => true
		validates :main_phone, :presence => true, :numericality => true
end
