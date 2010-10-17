class CreateFqueues < ActiveRecord::Migration
  def self.up
    create_table :fqueues do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :fqueues
  end
end
