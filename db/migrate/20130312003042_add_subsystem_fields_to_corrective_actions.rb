class AddSubsystemFieldsToCorrectiveActions < ActiveRecord::Migration
  def change
    add_column :corrective_actions, :customer_subsystem_id, :integer
    add_column :corrective_actions, :supplier_subsystem_id, :integer
  end
end
