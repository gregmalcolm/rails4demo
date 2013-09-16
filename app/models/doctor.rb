class Doctor < ActiveRecord::Base
  has_many :companions

  #Fakery
  attr_accessor :left_pocket_contents
  attr_accessor :right_pocket_contents
  attr_accessor :doctor_number
  attr_accessor :date
  attr_accessor :week
  attr_accessor :month
  attr_accessor :colour
  attr_accessor :date_field
end
