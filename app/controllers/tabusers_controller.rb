class TabusersController < ApplicationController

	def login
		name=params[:tabuser][:name]
		password=params[:tabuser][:password]
		session[:tabuser]=nil
		user=Tabuser.find_by_name_and_password(name,password)
	  if user
	    session[:tabuser]=user
	    session[:tabuserId]=user.id
	    @tabuser=session[:tabuser]
	    redirect_to :action=>"index",:controller=>"tabflowers"
	  else
	    session[:tabuser]=nil
	    flash[:notice]="denglushibai!"
	  end
  end

  def show 
  		@tabuser = session[:tabuser]
  end
  def register
  end

  def registerUser
    @new_user=Tabuser.new()
    @new_user.name=params[:tabuser][:name]
    @new_user.password=params[:tabuser][:pass]
    @new_user.true_name=params[:tabuser][:tname]
    @new_user.address=params[:tabuser][:address]
    @new_user.code=params[:tabuser][:code]
    @new_user.phone=params[:tabuser][:phone]
    @new_user.email=params[:tabuser][:email]
    @new_user.address_type=params[:tabuser][:type]
    if @new_user.save
      redirect_to :action=>"register"
      flash[:notice]="恭喜您"+@new_user.name+"，会员注册成功!"
    else
      redirect_to :action=>"register"
    end
  end

  def exit
    session[:tabuser]=nil
    redirect_to :action=>"index",:controller=>"tabflowers"
  end
end
