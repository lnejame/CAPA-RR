class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :email, :mobile
      t.timestamps
    end
  end
end
