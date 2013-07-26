class CreateCompanions < ActiveRecord::Migration
  def change
    create_table :companions do |t|
      t.string :name
      t.string :skills, array: true
      t.integer :doctor_id

      t.timestamps
    end
  end
end
