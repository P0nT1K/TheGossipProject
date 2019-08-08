
class UsersController < ApplicationController
   
  def show
    @user= User.find(params[:id])
  end

  def new
    @user = User.new 
  end
  def create
        @user = User.new(user_params)
        @user.city_id = City.all.sample.id
        if @user.save
            flash[:notice] = "Création réussie"
            redirect_to gossips_path

        else
            render new_user_path  
        end 
  end

    private
    
  def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
