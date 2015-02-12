class CreateSlowlogs < ActiveRecord::Migration
  def change
    create_table :slowlogs do |t|
      t.string :name
      t.string :key
      t.string :duration
      t.datetime :date
      t.integer :value

      t.timestamps null: false
    end
  end
end
