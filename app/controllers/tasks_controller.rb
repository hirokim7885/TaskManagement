class TasksController < AuthController

  def index
    @tasks = current_user.tasks.where(status: 0).order(created_at: :desc)
  end

  def show
    @task = current_user.tasks.find(params[:id])
  end

  def new
    @task = current_user.tasks.build
  end

  def create
    @task = current_user.tasks.build(task_params)
    if @task.save
      redirect_to task_path(@task), notice: '新規タスクを保存しました。'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @task = current_user.tasks.find(params[:id])
  end

  def update
    @task = current_user.tasks.find(params[:id])
    if @task.update(task_params)
      redirect_to task_path(@task), notice: 'タスクを更新しました。'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @task = current_user.tasks.find(params[:id])
    @task.destroy
    redirect_to root_path, notice: 'タスクを削除しました。'
  end

  private

  def task_params
    params.require(:task).permit(:title, :body, :schedule_id, :category, :deadline, :status)
  end

end
