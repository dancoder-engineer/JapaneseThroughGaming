class UsersController < ApplicationController

    skip_before_action :verify_authenticity_token

    def index
        users = User.all
        render json: users, status: 200
    end

    def byname
        user = User.find_by(userName: params[:name])
        if user[:gotHowFar]
            session[:user] = user
        else
            session[:user] = {}
        end
        render json: session[:user], status: 200
    end
    
    def create
        user = User.create!(allowed)
        render json: user, status: :created
    end

    
    def login
        session.delete :user
      

    

        user=User.find_by(username: params[:userName])

        if user&.authenticate(params[:password])
            session[:user] = user
        end
      
            render json: session[:user]
      end

private
    def allowed
        params.permit(:userName, :password, :password_confirmation, :email, :gotHowFar, :paidHowFar)
    end

end



