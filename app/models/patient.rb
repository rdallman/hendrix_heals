class Patient < ActiveRecord::Base
  has_many :procedures
  has_many :physicians, through: :procedures
  belongs_to :room
  accepts_nested_attributes_for :room, :allow_destroy => true

  def address
    return [street_address, city, state, zip].join(', ')
  end

end
