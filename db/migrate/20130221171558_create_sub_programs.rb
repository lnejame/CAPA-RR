class CreateSubPrograms < ActiveRecord::Migration
  def change
    create_table :sub_programs do |t|
      t.string :name
      t.timestamps
    end
  end
end
