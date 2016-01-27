class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :pets_name
      t.string :age
      t.string :breed
      t.string :weight
      t.datetime :last_visit
      t.references :cust, index: true

      t.timestamps
    end
  end
end
