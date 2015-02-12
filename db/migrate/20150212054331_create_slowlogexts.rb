class CreateSlowlogexts < ActiveRecord::Migration
  def change
    create_table :slowlogexts do |t|
      t.string :name
      t.string :key
      t.string :duration
      t.datetime :date
      t.text :value

      t.timestamps null: false
    end
  end
end
