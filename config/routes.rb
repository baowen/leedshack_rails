Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'welcome/page1'
  post 'welcome/page1'

  get 'welcome/page2'
  post 'welcome/page2'

  root 'welcome#index'

end
