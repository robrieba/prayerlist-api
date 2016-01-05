class User < ActiveRecord::Base
  has_many :lists
  has_many :prayer_requests, through: :lists

end
