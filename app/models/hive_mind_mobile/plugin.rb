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
  end
end