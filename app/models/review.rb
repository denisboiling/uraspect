class Review < ActiveRecord::Base
  attr_accessible :caption, :content, :moderated
  validates :caption, :content, presence: true

  scope :moderated, -> { where(moderated: true) }
end
