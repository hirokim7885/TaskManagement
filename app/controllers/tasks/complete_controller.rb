class Tasks::CompleteController < AuthController

  def index
    @tasks = current_user.tasks.where(status: 1).order(created_at: 'desc')
  end

end