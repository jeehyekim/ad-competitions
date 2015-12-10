class Tagging < ActiveRecord::Base
  belongs_to :competition
  belongs_to :tag
end
