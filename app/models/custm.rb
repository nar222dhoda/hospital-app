class Custm < ActiveRecord::Base
has_many :appoints
has_many :pets
validates :pets_name, :date_of_next_appointment, :reason, presence: true

validate :date_of_next_appointment_should_not_be_past

           
    def date_of_next_appointment_should_not_be_past
        if date_of_next_appointment.present? && date_of_next_appointment> Date.today
         errors.add(:date_of_next_appointment, "The date you have selected is in the past!")
      end
   end

end
