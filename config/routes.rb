Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :omniauth_callback => "users/omniauth_callbacks"}
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  # resources :folders

   get 'welcome', to: 'welcome#index'
   post 'new_sharedfile', to: 'sharedfiles#new_shared'

  # get 'post', to: 'post#index'
   
  resources :posts
  resources :sharedfiles
end