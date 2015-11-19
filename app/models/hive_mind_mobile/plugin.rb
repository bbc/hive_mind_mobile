module HiveMindMobile
  class Plugin < ActiveRecord::Base

    has_one :device, as: :plugin

    def name
      self.serial
    end

    def self.plugin_params params
      params.permit(:imei, :serial)
    end
  end
end