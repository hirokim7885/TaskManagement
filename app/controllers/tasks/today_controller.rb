class Tasks::TodayController < AuthController

  def index
    @tasks = current_user.tasks.where(deadline: (Time.now.end_of_day - 1.day)..Time.now.end_of_day, status: 0).order(created_at: :desc)
  end

end
