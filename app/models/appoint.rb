class Appoint < ActiveRecord::Base
  belongs_to :custm
  belongs_to :doctor
  belongs_to :pet
 

     validates :date, :pet, :customer, :reason, :dateinpast, presence: true
       validate :dateinpast 
 

     def dateinpast
        if date < Date.today
         self.errors.add(:base, "The date you have selected is in the past!")
      end
 end
 
end
