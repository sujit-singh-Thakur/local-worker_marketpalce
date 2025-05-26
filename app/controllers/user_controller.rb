class UserController < ApplicationController
  def index
    @users = User.all
  end
  def home
  end

  def new
  end

def create
  param_data = {
    name: params[:name],
    email: params[:email],
    contact: params[:contact]
  }

  if params[:type] == "contractor"
    @contractor = Contractor.new(param_data)

    if @contractor.save
      redirect_to home_url
    else
      render :new
    end
  else
    @worker = Worker.new(param_data)

    if @worker.save
      redirect_to home_url
    else
      render :new
    end
  end
end



  private
  def param_data
    params.expect(user: [:name, :email, :contact])
  end
  
end

# params[:user][:type].constantize