class TabusersController < ApplicationController

  def index
    redirect_to :action=>"index",:controller=>"tabflowers"
  end
	def login
     render 'tabflowers/index'
		name=params[:name]
		password=params[:password]
		session[:tabuser]=nil
		user=Tabuser.find_by_name_and_password(name,password)
     # session[:tabuser]=user
      # Rails.logger.info "#{user}"
	  if user
	    session[:tabuser]=user
	    session[:tabuserId]=user.id
      # @tabuser=user
      Rails.logger.info "#{user} aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
	    # @tabuser=session[:tabuser]
      @tabuser=user
      # Rails.logger.info "#{@tabuser}"
      flash[:notice]="恭喜您"+@tabuser.name+"，登录成功!"
	    # respond_to :action=>"index",:controller=>"tabflowers"
      # respond_to do |format|
      #   format.html { redirect_to tabusers_path, notice: "恭喜您"+@tabuser.name+"，登录成功!" }
      return tabflowers_path
        # format.json { head :no_content }
      # end
	  else
	    # session[:tabuser]=nil
      @tabuser=nil
      Rails.logger.info "#{user} bbbbbbbbbbbbbbbbbbbbbbbbbbb"
	    flash[:notice]="登录失败!"
      return logon_tabusers_path
	  end
  end

  def show 
  		@tabuser = session[:tabuser]
  end

  def logon
    render :layout => 'special_layout'
    # name=params[:tabuser][:name]
    # password=params[:tabuser][:password]
    # session[:tabuser]=nil
    # user=Tabuser.find_by_name_and_password(name,password)
    # if user
    #   session[:tabuser]=user
    #   session[:tabuserId]=user.id
    #   @tabuser=session[:tabuser]
    #   redirect_to :action=>"index",:controller=>"tabflowers"
    # else
    #   session[:tabuser]=nil
    #   flash[:notice]="denglushibai!"
    # end
  end
  
  def register
    render :layout => 'special_layout' 
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
      # redirect_to :action=>"logon"
      flash[:notice]="恭喜您"+@new_user.name+"，会员注册成功!"
      # render :action=>"logon"
    else
      redirect_to :action=>"register"
    end
  end

  def registerUser
    render :layout => 'special_layout' 
  end

  def exit
    session[:tabuser]=nil
    redirect_to :action=>"index",:controller=>"tabflowers"
  end
end
