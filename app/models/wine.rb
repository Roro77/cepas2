class Wine < ApplicationRecord
  has_many :wine_strains
  has_many :strains, through: :wine_strains, dependent: :destroy
  validates :name, presence: true  

  has_many :oenologist_wines    
  has_many :oenologists, through: :oenologist_wines
  
  accepts_nested_attributes_for :wine_strains, reject_if: ->(attributes){ attributes['strain_id'].blank? || attributes['percentage'].blank? }
end
