class WelcomeController < ApplicationController

  around_action :handle_post

  def page1
  end

  def page1_post

    redirect_to welcome_page2_path
  end

  def webchat_question
  end

  def webchat_question_post

    if !params[:webchat].blank? && params[:webchat] == 'yes'
      redirect_to welcome_webchat_path

    else
      redirect_to welcome_phone_question_path
    end


  end

  def phone_question
  end

  def phone_question_post

    if !params[:phone].blank? && params[:phone] == 'yes'
      redirect_to welcome_phone_access_path

    else
      redirect_to welcome_webchat_question_path
    end
  end

  def phone_access
  end

  def phone_access_post

    redirect_to welcome_internal_portal_path
  end

  def internal_portal
  end

  def internal_portal_post

    redirect_to welcome_generated_code_path 
  end

  def generated_code
  end

  def generated_code_post
  end



  def webchat
  end

  def webchat_post

    redirect_to welcome_enter_access_code_path
  end

  def enter_bank_details
  end

  def enter_bank_details_post
  end





  def confirm_who
  end

  def confirm_who_post
    redirect_to welcome_upload_photo_option_path
  end

  def page2
  end

  def page2_post

    redirect_to welcome_login_or_signup_path
  end

  def photo_confirmed
  end

  def photo_confirmed_post
    redirect_to welcome_enter_bank_details_path
  end


  def upload_photo_option
  end

  def upload_photo_option_post
    puts "***********************    photo is not blank  #{params[:photo]}"
    if !params[:photo].blank? && params[:photo] == 'yes'
      puts "***********************    photo is not blank  #{params[:photo]}"
      redirect_to welcome_upload_photo_path

    else
      redirect_to welcome_webchat_question_path
    end
  end

  def upload_photo
  end

  def upload_photo_post

    redirect_to welcome_photo_confirmed_path
  end



  def login
  end

  def login_post

    redirect_to welcome_verify_path
  end

  def enter_bank_details
  end

  def enter_bank_details_post
    redirect_to welcome_success_path
  end

  def verify
  end

  def verify_post
    redirect_to welcome_failed_verify_path
  end

  def failed_verify
  end

  def failed_verify_post

    redirect_to welcome_confirm_who_path
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
    redirect_to welcome_enter_bank_details_path
  end

  def success
  end

  def success_post
  end

  def success_two_step
  end

  def success_two_step_post
    redirect_to welcome_confirm_who_path
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
