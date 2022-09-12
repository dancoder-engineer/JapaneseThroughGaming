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

    def show
        user = User.find_by(id: params[:id])
        render json: user, status: 200
    end

    def getme
        if session[:user]
            user = User.find_by(id: session[:user_id])
            render json: user, status: 200
        else
            return render json: {}, status: 200
        end
    end

    
    def login
        session.delete :user_id
      

    

        user=User.find_by(username: params[:userName])

        if user&.authenticate(params[:password])
            session[:user_id] = user
        end
      
            render json: user
      end

private
    def allowed
        params.permit(:userName, :password, :password_confirmation, :email, :gotHowFar, :paidHowFar)
    end

end



