class Cat < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :breed, presence: true
  has_one_attached :kitty_photo
  before_save(:titleize_cat)

  private
    def titleize_cat
      self.breed = self.breed.titleize
    end
end