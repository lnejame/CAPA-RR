class SupplierSubsystem < ActiveRecord::Base
		# Associations
		has_many :corrective_actions
		
		# Validations
		validates :address1, :presence => true
		validates :city, :presence => true
		validates :state, :presence => true
		validates :country, :presence => true
		validates :zipcode, :presence => true, :numericality => true
		validates :main_phone, :presence => true, :numericality => true
end
