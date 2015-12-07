class CreateHiveMindMobileDeviceHives < ActiveRecord::Migration
  def change
    create_table :hive_mind_mobile_device_hives do |t|
      t.integer :hive_id

      t.datetime :start_timestamp
      t.datetime :end_timestamp
      t.timestamps null: false
    end
  end
end
