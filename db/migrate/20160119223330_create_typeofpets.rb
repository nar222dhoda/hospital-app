class CreateTypeofpets < ActiveRecord::Migration
  def change
    create_table :typeofpets do |t|
      t.string :name
      t.references :pet, index: true

      t.timestamps
    end
  end
end
