require 'rails_helper'

module HiveMindMobile
  RSpec.describe Attribute, type: :model do
    describe '#serial' do
      let(:hive_attributes) {
        Attribute.create( serial: '123456789' )
      }

      it 'returns the hostname' do
        expect(hive_attributes.name).to eq '123456789'
      end
    end
  end
end
