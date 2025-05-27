class TaskController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    # contractor = Contractor.find_by(name: params[:contractor_name]) 

   @task = Task.new(param_task={
      description: params[:description],
      contact_info: params[:contact_info],
      catagory_id: params[:catagory_id],
      contractor_id: params[:contractor_id]
      })

   if @task.save
    redirect_to contractor_home_url
   else
    render :new
   end
  end


  private
  def param_task
    params.expect(task: [:description,:contact_info,:catagory_id,:contractor_id])
  end

end
