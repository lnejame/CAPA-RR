class CorrectiveAction < ActiveRecord::Base
		# Association
		belongs_to :responsible_user, :class_name => "User"
		belongs_to :created_user, :class_name => "User"
		belongs_to :group
		belongs_to :program
		belongs_to :sub_program
		belongs_to :part
		belongs_to :supplier
		belongs_to :category
		belongs_to :ca_class
		belongs_to :ca_type
		belongs_to :division
		belongs_to :level
		belongs_to :source
		
		#Validation
		validates :subject, :presence => true
		validates :created_user_id, :presence => true
		
		#Callbacks
		after_create :set_initial_status
		
		def set_initial_status
				self['status'] = "new"
				self.save
		end
end
