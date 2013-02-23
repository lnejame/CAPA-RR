class CreateCorrectiveActions < ActiveRecord::Migration
  def change
    create_table :corrective_actions do |t|
      t.integer :group_id, :created_user_id, :responsible_user_id, :program_id, :sub_program_id, :part_id, :supplier_id, :customer_id, :category_id, :size, :range
      t.datetime:due_date
      t.string :subject, :security_level, :location, :ca_type, :division, :department, :source,:ca_class, :level, :scope, :status
      t.float :material_cost, :labor_cost, :total_cost
      t.text :description
      t.timestamps
    end
  end
end
