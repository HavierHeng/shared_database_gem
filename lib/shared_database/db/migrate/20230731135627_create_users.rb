class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :staff_id
      t.string :first_name
      t.string :last_name
      t.string :designation

      t.timestamps null: false
    end
  end
end
