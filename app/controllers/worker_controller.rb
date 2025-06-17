class WorkerController < ApplicationController
  def home
  end
  def create
    role = params[:type]
 
   if role == "contractor"
     @user = Contractor.new(param_data = {
         name: params[:name],
         email: params[:email],
         contact: params[:contact]})
         if @user.save
           redirect_to contractor_home_url 
         else
           render :new
         end
 
   elsif role == "worker"
     @user = Worker.new(param_data = {
       name: params[:name],
       email: params[:email],
       contact: params[:contact]})
     if @user.save
       redirect_to worker_home_url
 
     else
       render :new
     end
   end
   
end
