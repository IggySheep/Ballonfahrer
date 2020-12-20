module SessionsHelper
   
  def log_in(ballonfahrer)
  session[:ballonfahrer_id] = ballonfahrer.id
  end

  def current_ballonfahrer
  @current_ballonfahrer ||= Ballonfahrer.find_by(id: session[:ballonfahrer_id])
  end
  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_ballonfahrer.nil?
  end
  
  def log_out
    session.delete(:ballonfahrer_id)
    @current_ballonfahrer = nil
  end

end
