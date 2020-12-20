   class SessionsController < ApplicationController

     def new
     end
     
     def create
        ballonfahrer = Ballonfahrer.find_by(email: params[:session][:email].downcase)
        if ballonfahrer && ballonfahrer.authenticate(params[:session][:password])
        log_in ballonfahrer
        redirect_to ballonfahrer


      # Log the user in and redirect to the user's show page.
    else
      flash[:danger] = 'Invalid email/password combination' # Not quite right!

      render 'new'
      end
     end

     def destroy
      log_out
      redirect_to root_url

     end
   end