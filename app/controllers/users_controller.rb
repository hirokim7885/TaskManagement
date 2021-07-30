class UsersController < AuthController
  
  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to user_path(@user), notice: 'アカウントを更新しました。'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user = current_user
    @user.destroy
    redirect_to sign_in_path, notice: 'アカウントを削除しました。'
  end


  private
  
  def user_params
    params.require(:user).permit(:name, :email)
  end

end
