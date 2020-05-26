module UsersHelper
  def current_user
<<<<<<< HEAD
    user = User.find(session[:user_id])
=======
    User.find(session[:user_id])
>>>>>>> 24762b80f5f942cee8ce934c9b60b5762837023d
  end
end
