class Operation < ApplicationRecord

  validates :montantsort, presence: true
  validates :date, presence: true
  validates :motif, presence: true
  belongs_to :user

  def montant_positif
  if montantsort < 0
    abs(montantsort)
  end
  end
end
