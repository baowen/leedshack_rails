Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'welcome/page1'
  post 'welcome/page1'

  get 'welcome/page2'
  post 'welcome/page2'

  get 'welcome/facebook_login'
  post 'welcome/facebook_login'

  get 'welcome/login'
  post 'welcome/login'

  get 'welcome/login_or_signup'
  post 'welcome/login_or_signup'

  get 'welcome/used_before'
  post 'welcome/used_before'

  get 'welcome/enter_your_details'
  post 'welcome/enter_your_details'

  get 'welcome/enter_mobile'
  post 'welcome/enter_mobile'

  get 'welcome/enter_access_code'
  post 'welcome/enter_access_code'


  get 'welcome/two_step'
  post 'welcome/two_step'

  get 'welcome/success_two_step'
  post 'welcome/success_two_step'

  get 'welcome/facebook_data'
  post 'welcome/facebook_data'

  root 'welcome#index'

end
