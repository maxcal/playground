class Claim < ActiveRecord::Base
  belongs_to :claimant, class_name: 'User',
                        inverse_of: :claims
  has_many :rulings
  has_many :commissioners, through: :rulings
end
