class Kitchen < ApplicationRecord
  belongs_to :user
  validates :conro, :oven, :flier, :drink, :salad, presence: true
  validates :conro, :oven, :flier, :drink, :salad, :numericality => { :less_than_or_equal_to => 5 }
end
