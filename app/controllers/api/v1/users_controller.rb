class Api::V1::UsersController < ApplicationController

    skip_before_action :authorized, only: [:create, :update, :destroy]

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
        @token = encode_token({ user_id: @user.id })
        render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
        render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            render json: {
                status: :updated,
                user: @user
            }
        else
            render json: { status: 500 }
        end 
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: {}
    end

private

    def user_params
        params.require(:user).permit(:username, :password)
    end

end
