class CreateCorrectiveActions < ActiveRecord::Migration
  def change
    create_table :corrective_actions do |t|
      t.integer :group_id, :created_user_id, :responsible_user_id, :program_id, :sub_program_id, :part_id, :supplier_id, :customer_id, :category_id, :size, :range, :ca_type_id, :division_id, :source_id, :ca_class_id, :level_id
      t.datetime:due_date
      t.string :subject, :security_level, :location, :department, :scope, :status
      t.float :material_cost, :labor_cost, :total_cost
      t.text :description
      t.timestamps
    end
  end
end
