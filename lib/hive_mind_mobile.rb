require "hive_mind_mobile/engine"

module HiveMindMobile
  def self.find_or_create_by options
    Attribute.find_or_create_by(options.permit(:serial, :ip))
  end
end
