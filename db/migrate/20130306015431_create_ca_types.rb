class CreateCaTypes < ActiveRecord::Migration
  def change
    create_table :ca_types do |t|
      t.string :name
      t.timestamps
    end
  end
end
