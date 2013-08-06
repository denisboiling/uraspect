# encoding: utf-8

class Partner < ActiveRecord::Base
  attr_accessible :logo, :url, :position

  mount_uploader :logo, LogoUploader

  acts_as_list

  default_scope order('position')

  def to_s
    "Партнер ##{id}"
  end
end
