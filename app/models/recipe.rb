class Recipe < ApplicationRecord
  validates :title, :description, :image, presence: true
  
  has_one_attached :image  

  has_many :ingredients, inverse_of: :recipe, :dependent => :destroy
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true

  has_many :directions, inverse_of: :recipe, :dependent => :destroy
  accepts_nested_attributes_for :directions, reject_if: :all_blank, allow_destroy: true
end
