Rails.application.routes.draw do
  get 'admin' => 'admin#index'
 controller :sessions do
 get 'login' => :new
 post 'login' => :create
 delete 'logout' => :destroy
 end
 resources :users do
  resources :skills
  resources :additional_informations
  resources :projects
  resources :educations
  resources :work_experiences
  resources :personaldetails
 end
  get 'sessions/create'
  get 'sessions/destroy'
  
 
  root 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
