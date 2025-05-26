class WorkerController < ApplicationController
  def index
    @items = Worker.all
  end
  def new
    @item  = Worker.all
  end

 def create

 @item =Worker.new( param_data = {
  name: params[:name],
  email: params[:email],
  contact: params[:contact]})

 if @item.save
  redirect_to home_url
 else
  render :new
  end
end


  private
  def param_data
    params.expect(user: [:name, :email, :contact])
  end
  
end
