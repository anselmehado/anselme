class Operation < ApplicationRecord

  validates :montantsort, presence: true
  validates :date, presence: true
  validates :motif, presence: true

  validates_numericality_of :montantsort,
      :only_float => true

  scope :user_operation_list, -> (query) {where(user_id: query)}


  belongs_to :user


  scope :user_operation, -> (query) {where(user_id: query)}

  def user_operation(query)
     where(user_id: query)
  end


   # def somme_operation(operation)
   #   i= 0
   #   sommeOp = 0
   #   while (i<=operation.size)
   #
   #     #sommeOp += Operation[i].montantsort.to_i
   #     sommeOp= sum(:montantsort)
   #     i += 1
   #   end
   #  sommeOp
   #
   # end


end
