class Room < ActiveRecord::Base
  belongs_to :patient

  def location
    return [number, bed].join('')
  end
end
