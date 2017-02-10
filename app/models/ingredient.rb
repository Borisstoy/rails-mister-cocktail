class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
  validates :name, presence: true, uniqueness: true

  before_destroy :check_for_cocktails

  private

  def check_for_cocktaiks
    if doses.any?
      erros[:base] << "Cannot delete ingredient used by a cocktail"
      return false
    end
  end
end
