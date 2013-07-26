class Procedure < ActiveRecord::Base
  belongs_to :physician
  belongs_to :patient
  belongs_to :treatment
end
