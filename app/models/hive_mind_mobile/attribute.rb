module HiveMindMobile
  class Attribute < ActiveRecord::Base
    def name
      self.serial
    end
  end
end
