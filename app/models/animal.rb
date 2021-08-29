class Animal < ApplicationRecord
  # has_many_attached :images
  attachment :image

  belongs_to :customer
  has_many :searches

  enum tipe: { dog: 0, cat: 1}
  enum sex: { bothsides: 0, male: 1, female: 2}
  enum vaccine: { unknown: 0, already: 1, notyet: 2}
  enum castrate: { humei: 0, sumi: 1, mada: 2}

  scope :search, -> (search_params) do
    return if search_params.blank?

    profile_like(search_params[:profile])
      .prefecture_like(search_params[:gender])
      .tipe_is(search_params[:sex])
      .sex_is(search_params[:gender])
      .vaccine_is(search_params[:gender])
      .castrate_is(search_params[:gender])
  end

  scope :profile_like, -> (profile) { where('profile LIKE ?', "%#{profile}%") if profile.present? }
  scope :prefecture_like, -> (prefecture) { where('prefecture LIKE ?', "%#{prefecture}%") if prefecture.present? }
  scope :tipe_is, -> (tipe) { where(tipe: tipe) if tipe.present? }
  scope :sex_is, -> (sex) { where(sex: sex) if sex.present? }
  scope :vaccine_is, -> (vaccine) { where(vaccine: vaccine) if vaccine.present? }
  scope :castrate_is, -> (castrate) { where(castrate: castrate) if castrate.present? }

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
