# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
q = Fqueue.create(:name => "Sean's Queue")
sort = 0
Entry.create(:title => 'Ironman 2', :fqueue_id => q.id, :sort => sort += 1)
Entry.create(:title => 'Freaks and Geeks', :fqueue_id => q.id, :sort => sort += 1)
Entry.create(:title => 'Raiders of the Lost Ark', :fqueue_id => q.id, :sort => sort += 1)
Entry.create(:title => 'Cast Away', :fqueue_id => q.id, :sort => sort += 1)
