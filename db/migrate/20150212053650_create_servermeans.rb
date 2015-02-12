class CreateServermeans < ActiveRecord::Migration
  def change
    create_table :servermeans do |t|
      t.string :name
      t.string :key
      t.datetime :date
      t.string :duration
      t.integer :value

      t.timestamps null: false
    end
  end
end
