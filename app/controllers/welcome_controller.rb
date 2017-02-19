class WelcomeController < ApplicationController

  around_action :handle_post

  def page1
  end

  def page1_post

    redirect_to welcome_page2_path
  end

  def page2
  end

  def page2_post

    redirect_to welcome_facebook_login_path
  end

  def facebook_login
  end

  def facebook_login_post
    session.delete(:data)


    @application = session[:application]

    @data = Hash.new
    @data[:id] = params[:id]
    @data[:first_name] = params[:first_name]
    @data[:last_name] = params[:last_name]
    @data[:age_range_min] = params[:age_range_min]
    @data[:email] = params[:email]
    @data[:updated_time] = params[:updated_time]
    @data[:picture] = params[:picture]

    session[:data] = @data

    redirect_to welcome_facebook_data_path
  end

  def facebook_data
    @data = session[:data]

  end

  def facebook_data_post
  end




  private

  def handle_post
    if request.post? && self.respond_to?( "#{action_name}_post" )
      self.public_send "#{action_name}_post"
    end
    yield unless performed?
  end


end
