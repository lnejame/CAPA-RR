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

["Type1", "Type2"].each do |type_name|
		CaType.create(:name => type_name)
end

["Division1", "Division2"].each do |division_name|
		Division.create(:name => division_name)
end

["Source1", "Source2"].each do |source_name|
		Source.create(:name => source_name)
end

["Class1", "Class2"].each do |class_name|
		CaClass.create(:name => class_name)
end

["Level1", "Level2"].each do |level_name|
		Level.create(:name => level_name)
end
