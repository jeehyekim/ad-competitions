class Competition < ActiveRecord::Base
  # attr_accessible :content, :name, :tag_list

  has_many :commitments
  has_many :users, through: :commitments
  has_many :taggings
  has_many :tags, through: :taggings

  def self.tagged_with(name)
    Tag.find_by_name(name).competitions
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
