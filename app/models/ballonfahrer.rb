class Ballonfahrer < ApplicationRecord
has_secure_password
   # attr_accessible :name, :email, :password, :password_confirmation


  # Returns the hash digest of the given string.
  def Ballonfahrer.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end



include ActionView::Helpers::TextHelper


  class GlosentryHelper
    include ActionView::Helpers::TextHelper
  end
  
  def helper
    @h ||= GlosentryHelper.new
  end
    
  def kurzform_uebermich(len=20) 
    truncate(self.uebermich, :length => len)
  end


end
