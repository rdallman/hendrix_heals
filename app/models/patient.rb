class Patient < ActiveRecord::Base
  has_many :procedures
  has_many :physicians, through: :procedures
  has_one :room
end
