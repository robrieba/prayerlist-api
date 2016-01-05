class AddListRefToPrayerRequests < ActiveRecord::Migration
  def change
    add_reference :prayer_requests, :list, index: true, foreign_key: true
  end
end
