require 'spec_helper'

describe HiveMindMobile do
  describe '#find_or_create_by' do
    let(:valid_options) {
      ActionController::Parameters.new({
                                           serial: '123456789',
                                           imei: '987654321'
                                       })
    }

    it 'creates an attribute instance' do
      expect(HiveMindMobile.find_or_create_by(valid_options)).to be_an HiveMindMobile::Attribute
    end
  end
end
