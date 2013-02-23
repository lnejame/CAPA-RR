# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

["Audit Deficiency", "Customer Issues", "default", "Internal Correcitve Actions", "Supplier Issue"].each do |group_name|
		Group.create(:name => group_name)
end

