class Comic < ActiveRecord::Base
  attr_accessible :user_id, :url

  belongs_to :user
  has_many :links
end
