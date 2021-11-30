class Entre < ApplicationRecord
  validates :montant_in, presence: true
  validates :date, presence: true
  validates :motif, presence: true
  belongs_to :user
end
