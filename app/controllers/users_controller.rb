class UsersController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index]
    before_action :set_user, only: [:edit, :update]

    def index
        @users = User.all
    end

    def edit
    end

    def update
        if @user.update(user_params)
            flash[:notice] = "Roles Changed Successfully"
            redirect_to users_path
        else
            render "edit"
        end
    end

    private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(role_ids: [])
    end
end