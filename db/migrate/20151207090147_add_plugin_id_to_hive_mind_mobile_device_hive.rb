class AddPluginIdToHiveMindMobileDeviceHive < ActiveRecord::Migration
  def change
    add_column :hive_mind_mobile_device_hives, :plugin_id, :integer
  end
end
