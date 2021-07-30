class Tasks::PrivatesController < AuthController

  def index
    @user = current_user
    @tasks = current_user.tasks.where(category: 0, status: 0).order(created_at: 'desc')
  end

end
