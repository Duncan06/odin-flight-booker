class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.string :start
      t.string :end
      t.datetime :scheduled
      t.time :duration
      t.references :airport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
