class DocCategory < ActiveRecord::Base
  attr_accessible :name, :position

  has_many :docs, foreign_key: :category_id

  validates :name, presence: true

  acts_as_list

  default_scope order('position')
end
