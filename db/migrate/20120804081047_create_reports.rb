class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :brand
      t.string :model
      t.string :city
      t.string :country
      t.string :serial
      t.datetime :crime_date
      t.string :owner_name
      t.string :owner_email
      t.string :owner_phone

      t.timestamps
    end
  end
end
