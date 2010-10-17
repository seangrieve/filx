class AddSortToEntry < ActiveRecord::Migration
  def self.up
    add_column :entries, :sort, :integer
  end

  def self.down
    remove_column :entries, :sort
  end
end
