class CreateSupplierSubsystems < ActiveRecord::Migration
  def change
    create_table :supplier_subsystems do |t|
      t.string :name, :address1, :address2, :city, :state, :zipcode, :country, :main_phone
      t.timestamps
    end
  end
end
