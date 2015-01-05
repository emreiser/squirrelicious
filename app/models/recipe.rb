class Recipe < ActiveRecord::Base
  has_and_belongs_to_many :users
  validates :yummlyid, uniqueness: true
end
