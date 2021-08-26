class Animal < ApplicationRecord
  has_many_attached :images
  
  belongs_to :customer
end
