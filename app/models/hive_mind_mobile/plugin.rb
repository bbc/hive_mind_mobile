module HiveMindMobile
  class Plugin < ActiveRecord::Base

    has_one :device, as: :plugin
    has_many :device_hive

    attr_accessor :model, :hive_id

    def name
      self.model
    end

    def self.plugin_params params
      params.permit(:imei, :model, :serial, :hive_id)
    end

    def self.create(*args)
      device = super(*args)

      if args.first.key? 'hive_id'
        if device.device_hive.length > 0
          device.device_hive.last.end_timestamp = Time.now
        end
        device.device_hive << DeviceHive.create(hive_id: args.first['hive_id'], start_timestamp: DateTime.now())
      end
      device
    end

    def hive_id
      self.device_hive.where(end_timestamp: nil).order(start_timestamp: :desc)
    end

  end
end