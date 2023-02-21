class SessionsController < ApplicationController
   def new
   end

   def create
    #check if user exists
    @user = User.find_by({"email" => params["email"]})
    # if they do, check that they know their passowrd
    if @user
        if params["password"] == @user["password"]
        redirect_to "/companies"
        else 
            redirect_to "/sessions/new" 
        end  
    else
        redirect_to "/sessions/new"
    end
end
end
