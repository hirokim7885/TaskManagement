class Tasks::BusinessController < AuthController

  def index
    @tasks = current_user.tasks.where(category: 1, status: 0).order(created_at: 'desc')
  end

end