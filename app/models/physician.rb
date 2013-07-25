class Physician < ActiveRecord::Base
  has_many :procedures
  has_many :patients, through: :procedures
end
