class SetupHstore < ActiveRecord::Migration
  def self.up
    #execute "create extension hstore"
    system("psql template1 -c 'create extension hstore;'")
  end

  def self.down
    #execute "drop extension hstore"
    system("psql template1 -c 'drop extension hstore;'")
  end
end
