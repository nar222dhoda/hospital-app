class Group < ActiveRecord::Base
   validates :username, :email, presence: true
  
   name=email.sub(/\@./)
end
