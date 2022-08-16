Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :omniauth_callback => "users/omniauth_callbacks"}

    get 'welcome', to: 'welcome#index'

  end
