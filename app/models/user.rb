class User < ActiveRecord::Base
  has_many :claims, foreign_key: 'claimant_id',
                    inverse_of: :claimant

  # rulings as claimant
  has_many :rulings, through: :claims

  has_many :rulings_as_commissioner, class_name: 'Ruling',
                                     foreign_key: 'commissioner_id'
  has_many :claims_as_commissioner, through: :rulings_as_commissioner,
                                    source: :claim
end
