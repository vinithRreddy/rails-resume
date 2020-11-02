Rails.application.routes.draw do
  resources :additional_informations
  resources :skills
  resources :projects
  resources :work_experiences
  resources :personaldetails
  resources :educations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
