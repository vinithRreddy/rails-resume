Rails.application.routes.draw do
  get 'admin' => 'admin#index'
 controller :sessions do
 get 'login' => :new
 post 'login' => :create
 delete 'logout' => :destroy
 end

 get 'signup', to: 'users#new'
 resources :user_steps

 resources :users, except: [:new] do
  resources :skills
  resources :additional_informations
  resources :projects
  resources :educations
  resources :work_experiences
  resources :personaldetails
 end
  get 'sessions/create'
  get 'sessions/destroy'
  
  root :to => "sessions#new"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
