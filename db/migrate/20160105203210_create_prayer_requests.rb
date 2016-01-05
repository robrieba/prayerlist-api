class CreatePrayerRequests < ActiveRecord::Migration
  def change
    create_table :prayer_requests do |t|
      t.string :name
      t.string :request

      t.timestamps null: false
    end
  end
end
