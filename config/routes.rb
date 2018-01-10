Rails.application.routes.draw do

  namespace :backoffice do
    resources :categories
  end

  get 'backoffice', to: 'backoffice/dashboard#index'

  devise_for :admins
  devise_for :members

  root 'backoffice/dashboard#index'

end
