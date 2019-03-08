class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :season, inclusion: { in: ["Spring", "Summer", "Autumn", "Winter", ""] }, allow_blank: true

  mount_uploader :photo, PhotoUploader
end
