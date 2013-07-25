class Tardis
  include ActiveModel::Model

  validates :doctor, presence: true
  validates :companion, length: { maximum: 20 }

  attr_accessor :doctor, :companion, :theme
end
