class Companion < ActiveRecord::Base
  belongs_to :doctor, touch: true
end
