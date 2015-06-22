class Tagging < ActiveRecord::Base
  belongs_to :tag
  belongs_to :tagged,
             polymorphic: :true,
             inverse_of: :taggings
end