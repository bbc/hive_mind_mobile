module HiveMindMobile
  class Plugin < ActiveRecord::Base

    has_one :device, as: :plugin

    attr_accessor :model

    def name
      self.model
    end

    def self.plugin_params params
      params.permit(:imei, :model, :serial)
    end

    def self.identify_existing options
      Plugin.find_by(serial: options[:serial]).device
    end
  end
end
