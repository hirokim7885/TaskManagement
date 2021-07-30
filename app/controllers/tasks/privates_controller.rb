class Tasks::PrivatesController < AuthController

  def index
    @tasks = current_user.tasks.where(category: 0, status: 0).order(created_at: 'desc')
  end

end
