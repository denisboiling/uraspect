class DocCategory < ActiveRecord::Base
  attr_accessible :name, :position

  has_many :docs, foreign_key: :category_id
  acts_as_list

  validates :name, presence: true

  default_scope order('position')
end
