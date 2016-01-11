class RemoveDeviceId < ActiveRecord::Migration
  def change
    remove_column :hive_mind_mobile_plugins, :device_id, :integer
  end
end
