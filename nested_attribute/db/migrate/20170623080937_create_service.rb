class CreateService < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.datetime :start_time
      t.decimal :day_of_week
      t.string :location
      t.references :church, foreign_key: true
    end
  end
end
