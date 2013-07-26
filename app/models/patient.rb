class Patient < ActiveRecord::Base
  has_many :procedures
  has_many :physicians, through: :procedures
  has_one :room

  def address
    return [street_address, city, state, zip].join(', ')
  end
end
