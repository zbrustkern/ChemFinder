class Chemical < ActiveRecord::Base
  has_and_belongs_to_many :fun_groups
end
