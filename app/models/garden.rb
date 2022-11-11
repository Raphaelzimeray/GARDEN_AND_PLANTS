class Garden < ApplicationRecord
  has_many :plants
  has_one_attached :photo
end
