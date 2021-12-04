class Entre < ApplicationRecord
  # validates :montant_in, presence: true
  validates :date, presence: true
  validates :motif, presence: true

  validates :montant_in, numericality: { only_float: true }

  scope :user_entre_list, -> (query) {where(user_id: query)}

  scope :user_entre, -> (query) {where(user_id: query)}

  def user_entre(query)
     where(user_id: query)
  end

  belongs_to :user
end
