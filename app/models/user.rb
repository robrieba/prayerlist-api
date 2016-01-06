class User < ActiveRecord::Base
  has_many :lists
  has_many :prayer_requests, through: :lists

  validates_presence_of :username, :password, on: :create

end
