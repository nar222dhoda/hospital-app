class CreateCustms < ActiveRecord::Migration
  def change
    create_table :custms do |t|
      t.string :name
      t.string :pets_name
      t.datetime :next_appointment
      t.text :reason

      t.timestamps
    end
  end
end
