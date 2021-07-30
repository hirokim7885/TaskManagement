class Tasks::TomorrowController < AuthController

  def index
    @tasks = current_user.tasks.where(deadline: Time.now.end_of_day..(Time.now.end_of_day + 12.months), status: 0).order(created_at: 'desc')
  end

end