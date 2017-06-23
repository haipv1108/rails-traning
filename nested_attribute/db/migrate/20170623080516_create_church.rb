class CreateChurch < ActiveRecord::Migration[5.0]
  def change
    create_table :churches do |t|
      t.string :description
      t.string :website

      t.timestamps
    end
  end
end
