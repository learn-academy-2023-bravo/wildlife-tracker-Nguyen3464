class CreateAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :animals do |t|
      t.string :commonnames
      t.string :scientificbinomial

      t.timestamps
    end
  end
end
