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

    redirect_to welcome_login_or_signup_path
  end

  def login
  end

  def login_post

    redirect_to welcome_used_before_path
  end

  def login_or_signup
  end

  def login_or_signup_post

    redirect_to welcome_login_path
  end

  def enter_your_details
  end

  def enter_your_details_post

    redirect_to welcome_two_step_path
  end

  def used_before
  end

  def used_before_post

    redirect_to welcome_enter_your_details_path
  end

  def two_step
  end

  def two_step_post

    redirect_to welcome_enter_mobile_path
  end

  def enter_mobile
  end

  def enter_mobile_post
    redirect_to welcome_enter_access_code_path
  end

  def enter_access_code
  end

  def enter_access_code_post
    redirect_to welcome_success_two_step_path
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
