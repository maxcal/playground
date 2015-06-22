class AvailableWork < ActiveRecord::Base
  has_many :taggings, as: :tagged
  has_many :tags, through: :taggings

  def self.tagged_with(name)
    # We have to do this in two queries since
    ids = Tagging.where(tagged_type: self.name )
           .joins(:tag)
           .where(tags: { name: name }).pluck(:tagged_id)
    find(ids)
  end

  def tag_list
    tags.map(&:name).join(", ")
  end

  def tag_list=(names)
    self.tags = names.split(",").map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end
end
