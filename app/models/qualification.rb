class Qualification < ActiveRecord::Base
  has_and_belongs_to_many :requirements
end
