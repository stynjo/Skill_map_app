Rails.application.routes.draw do
  
 #devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
 root 'static_pages#top'
 
 resources :users do
 end
 
 
 resources :kitchens do
    end
end
