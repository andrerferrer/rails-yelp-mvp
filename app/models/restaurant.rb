class Restaurant < ApplicationRecord
  ATTRIBUTES = %i[name address phone_number category].freeze
  CATEGORIES = %w[chinese italian japanese french belgian].freeze

  # When a restaurant ?is destroyed, all of its reviews
  ## should be destroyed as well.
  has_many :reviews, dependent: :destroy

  # A restaurant must have at least a name, an address and a category.
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  # The restaurant category should belong to a fixed list ["chinese", "italian",
  ## "japanese", "french", "belgian"].
  validates :category, inclusion: { in: CATEGORIES }
end
