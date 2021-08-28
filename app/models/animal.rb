class Animal < ApplicationRecord
  # has_many_attached :images
  attachment :image

  belongs_to :customer
  has_many :searches

  enum tipe: { dogcat: 0, dog: 1, cat: 2}
  enum sex: { bothsides: 0, male: 1, female: 2}
  enum vaccine: { unknown: 0, already: 1, notyet: 2}
  enum castrate: { humei: 0, sumi: 1, mada: 2}
  
# プロフィールによる絞り込み
# scope :get_by_profile, ->profile {
# where("profile like ?", "%#{profile}%")
# }
# 種類による絞り込み
# scope :get_by_tipe, ->(tipe) {
# where(tipe: tipe)
# }

# 性別による絞り込み
# scope :get_by_sex, ->(sex) {
# where(sex: sex)
# }

# ワクチンによる絞り込み
# scope :get_by_vaccine, ->(vaccine) {
# where(vaccine: vaccine)
# }

# 去勢手術による絞り込み
# scope :get_by_castrate, ->(castrate) {
# where(castrate: castrate)
# }


end
