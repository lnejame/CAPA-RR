class CreateCaClasses < ActiveRecord::Migration
  def change
    create_table :ca_classes do |t|
      t.string :name
      t.timestamps
    end
  end
end
