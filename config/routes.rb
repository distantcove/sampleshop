Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  resources :users, :messages
  get 'static_pages/messages'
  get 'static_pages/schedule'
  #get 'static_pages/index'
  #get 'static_pages/landing_page'
  authenticated :user do
  	root 'static_pages#index', as: :authenticated_root
  end	
  root 'static_pages#landing_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

