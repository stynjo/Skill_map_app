class Hall < ApplicationRecord
  belongs_to :user
  validates :hall, :server, :entrance, :washer, :reader, presence: true
  validates :hall, :server, :entrance, :washer, :reader, :numericality => { :less_than_or_equal_to => 5 }
end
