require 'rails_helper'

module HiveMindMobile
  RSpec.describe Plugin, type: :model do
    describe '#serial' do
      let(:hive_plugins) {
        Plugin.create( serial: '123456789' )
      }

      it 'returns the hostname' do
        expect(hive_plugins.name).to eq '123456789'
      end
    end
  end
end
