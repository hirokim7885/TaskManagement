class Tasks::CompleteController < AuthController

  def index
    @user = current_user
    @tasks = current_user.tasks.where(status: 1).order(created_at: 'desc')
  end

end