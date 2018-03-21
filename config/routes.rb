Rails.application.routes.draw do
  devise_for :user_admins, controllers: {
    sessions: 'user_admins/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
