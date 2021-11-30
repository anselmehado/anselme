class Operation < ApplicationRecord
  belongs_to :user

  def montant_positif
  if montantsort < 0
    abs(montantsort)
  end
  end
end
