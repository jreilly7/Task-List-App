class HomeController < ProtectedController

  def index
    @user = User.find(session[:user_id])
    @tasks = @user.tasks
  end
  
end
