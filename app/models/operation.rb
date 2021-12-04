class Operation < ApplicationRecord

  validates :montantsort, presence: true
  validates :date, presence: true
  validates :motif, presence: true

  validates_numericality_of :montantsort,
      :only_float => true

  scope :user_operation_list, -> (query) {where(user_id: query)}


  belongs_to :user

  # def montant_positif
  # if montantsort < 0
  #   abs(montantsort)
  # end
  # end

  scope :user_operation, -> (query) {where(user_id: query)}

  def user_operation(query)
     where(user_id: query)
  end


end
