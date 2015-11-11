class CreateHiveMindMobileAttributes < ActiveRecord::Migration
  def change
    create_table :hive_mind_mobile_attributes do |t|
      t.string :imei
      t.string :serial

      t.timestamps null: false
    end
  end
end
