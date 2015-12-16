class Competition < ActiveRecord::Base

  has_many :taggings
  has_many :tags, through: :taggings
  has_many :commitments, dependent: :destroy
  has_many :users, through: :commitments
  has_many :deadlines, dependent: :destroy


  def all_tags=(names)
    self.tags = names.split(',').map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
    self.tags.map(&:name).join(", ")
  end

  # def self.tagged_with(name)
  #   Tag.find_by_name!(name).competitions
  # end

end
