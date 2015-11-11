class CreateDeviceoramaMobileAttributes < ActiveRecord::Migration
  def change
    create_table :deviceorama_mobile_attributes do |t|
      t.string :imei
      t.string :serial

      t.timestamps null: false
    end
  end
end
