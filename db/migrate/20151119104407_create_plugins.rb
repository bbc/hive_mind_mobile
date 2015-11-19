class CreatePlugins < ActiveRecord::Migration
  def change
    create_table :plugins do |t|
      t.integer :device_id
      t.string :imei
      t.string :serial

      t.timestamps null: false
    end
  end
end
