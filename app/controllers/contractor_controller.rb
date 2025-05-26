class ContractorController < ApplicationController
  def index
    @items = Contractor.all
  end
  def new
    @item  = Contractor.all
  end

 def create

 @item =Contractor.new( param_data = {
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
