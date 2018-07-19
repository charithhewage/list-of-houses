class Address < ApplicationRecord
  before_save :upcase_state

  validates :address_1, presence: true
  validates :city, presence: true
  validates :state, presence: true, length: { is: 2 }
  validates :zip_code, presence: true

  private

  def upcase_state
    state.upcase!
  end
end
