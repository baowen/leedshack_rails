class WelcomeController < ApplicationController

  def page1
  end

  def page1_post

    redirect_to welcome_page2_path
  end

  def page2
  end

  def page2_post
  end




  private

  def handle_post
    if request.post? && self.respond_to?( "#{action_name}_post" )
      self.public_send "#{action_name}_post"
    end
    yield unless performed?
  end


end
