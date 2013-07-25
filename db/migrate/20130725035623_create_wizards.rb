class CreateWizards < ActiveRecord::Migration
  def change
    create_table :wizards do |t|
      t.string :name
      t.string :alignment
      t.string :spells, array:true
      t.hstore :bag_of_holding

      t.timestamps
    end
  end
end
