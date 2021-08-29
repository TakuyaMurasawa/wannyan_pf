class Search < ApplicationRecord
  belongs_to :animal

  scope :search, -> (search_params) do
    return if search_params.blank?

    profile_like(search_params[:profile])
      .prefecture_like(search_params[:prefecture])
      .tipe_is(search_params[:tipe])
      .sex_is(search_params[:sex])
      .vaccine_is(search_params[:vaccine])
      .castrate_is(search_params[:castrate])
  end

  scope :profile_like, -> (profile) { where('profile LIKE ?', "%#{profile}%") if profile.present? }
  scope :prefecture_like, -> (prefecture) { where('prefecture LIKE ?', "%#{prefecture}%") if prefecture.present? }
  scope :tipe_is, -> (tipe) { where(tipe: tipe) if tipe.present? }
  scope :sex_is, -> (sex) { where(sex: sex) if sex.present? }
  scope :vaccine_is, -> (vaccine) { where(vaccine: vaccine) if vaccine.present? }
  scope :castrate_is, -> (castrate) { where(castrate: castrate) if castrate.present? }


end
