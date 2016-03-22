class Ruling < ActiveRecord::Base
  belongs_to :claim
  belongs_to :commissioner, class_name: 'User'
end
