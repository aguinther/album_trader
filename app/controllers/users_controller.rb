class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)

    if @user.save!
      redirect_to root_path,
        notice: 'Profile has been successfully updated.'
    end
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:id] = @user.id
      redirect_to root_path,
        notice: "Thank you for signing up #{@user.first_name.titlecase}"
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name, :last_name, :email,
      :password, :password_confirmation
    )
  end
end
