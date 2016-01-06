class List < ActiveRecord::Base
  belongs_to :user
  has_many :prayer_requests

  validates_presence_of :name, on: [:create]

end
