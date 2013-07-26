class Room < ActiveRecord::Base
  has_one :patient

  def location
    return [number, bed].join('')
  end
end
