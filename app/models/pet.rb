class Pet < ActiveRecord::Base
  belongs_to :custm
  has_many :typeofpets
  has_many :appoints
  
  
  validates :pets_name, :age, :breed, :weight, :lastvisit, presence: true
  validates :breed, length: {maximum: 35} 
  validates :pets_name, length: {maximum: 35}
end
