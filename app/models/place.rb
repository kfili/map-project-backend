class Place < ActiveRecord::Base
  belongs_to :user
  validates :name, :address, :phone, :rating, presence: true
  validates :name, uniqueness: true
end
