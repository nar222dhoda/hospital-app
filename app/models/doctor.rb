class Doctor < ActiveRecord::Base
has_many :appointments

      validates :address, :city, :state, :school, :zip, :experience, presence: true
      validates :name, presence: true, length: {maximum: 35}
      validates :experience, length: {in: 1..100}
      validates :zip, length: {is: 5}
end

