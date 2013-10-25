class Link < ActiveRecord::Base
  attr_accessible :url, :comic_id

  belongs_to :comic
end
