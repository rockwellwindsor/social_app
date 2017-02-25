class PagesController < ApplicationController

    before_action :set_user

    def profile
        if @user
            redirect_to root_path
        else
            redirect_to new_user_session_path
        end
    end

    private

    def set_user
        if user_signed_in?
            @user = User.find(current_user.id)
        else
            @user = nil
        end
    end
end
