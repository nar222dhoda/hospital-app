class CreateAppoints < ActiveRecord::Migration
  def change
    create_table :appoints do |t|
      t.string :reminder
      t.string :reason
      t.datetime :past_visit
      t.references :custm, index: true
      t.references :doctor, index: true
      t.references :pet, index: true

      t.timestamps
    end
  end
end
