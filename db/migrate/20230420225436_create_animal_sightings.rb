class CreateAnimalSightings < ActiveRecord::Migration[7.0]
  def change
    create_table :animal_sightings do |t|
      t.string :latitude
      t.string :longitude
      t.string :date
      t.integer :animal_id

      t.timestamps
    end
  end
end
