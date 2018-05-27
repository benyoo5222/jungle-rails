class AuthenticationController < ApplicationController

 def signin

 end

 def auto_signin
  unless session[:username] == ENV['USER_NAME'] && session[:password] == ENV['PASSWORD']
    session[:target_url] = request.url
    redirect_to '/verify'
  end
 end

 def authentication

   if params["username"] == ENV['USER_NAME'] && params["password"] == ENV['PASSWORD']
    session[:username] = params["username"]
    session[:password] = params["password"]
    redirect_to session[:target_url]
   else
     redirect_to '/verify'
   end
 end

 def destroy
  session[:username] = nil
  session[:password] = nil
  redirect_to [:products]
 end

end
