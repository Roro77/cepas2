class Oenologist < ApplicationRecord
  has_many :oenologist_magazines
  has_many :magazines, through: :oenologist_magazines
  
  has_many :oenologist_wines
  has_many :wines, through: :oenologist_wines
  validates :name, presence: true

  accepts_nested_attributes_for :oenologist_magazines, reject_if: ->(attributes){ attributes['magazine_id'].blank? || attributes['job'].blank? }
end
