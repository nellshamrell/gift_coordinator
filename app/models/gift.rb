class Gift < ActiveRecord::Base
  validates :name, :presence => true
end
