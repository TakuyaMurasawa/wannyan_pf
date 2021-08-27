class Animal < ApplicationRecord
  # has_many_attached :images
  attachment :image

  belongs_to :customer

  enum tipe: { dog: 0, cat: 1, dogcat: 2}
  enum sex: { male: 0, female: 1, bothsides: 2}
  enum vaccine: { already: 0, notyet: 1, unknown: 2}
  enum castrate: { sumi: 0, mada: 1, humei: 2}
end
