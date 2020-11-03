Rails.application.routes.draw do
  get 'admin' => 'admin#index'
 controller :sessions do
 get 'login' => :new
 post 'login' => :create
 delete 'logout' => :destroy
 end
 resources :resumes do
  resources :skills
  resources :additional_informations
  resources :projects
  resources :educations
  resources :work_experiences
 end
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  resources :additional_informations
  resources :skills
  resources :projects
  resources :work_experiences
  resources :personaldetails
  resources :educations 
  root 'personaldetails#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
