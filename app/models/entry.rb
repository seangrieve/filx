class Entry < ActiveRecord::Base
  belongs_to :fqueue 

  default_scope :order => 'sort'
end
