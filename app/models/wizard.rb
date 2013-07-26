class Wizard < ActiveRecord::Base
  store_accessor :bag_of_holding, :wand
  store_accessor :bag_of_holding, :toothbrush
  store_accessor :bag_of_holding, :cupboard
end
