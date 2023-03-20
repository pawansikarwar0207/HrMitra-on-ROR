Rails.application.routes.draw do
  
    devise_for :student_users, controllers: {
        sessions: 'student_users/sessions',
        passwords: 'student_users/passwords',
        registrations: 'student_users/registrations',
        confirmations: 'student_users/confirmations'
      }


  
  get  'branch' => 'pages#branch'
  get  'about-us' => 'pages#about_us'
  get  'contact-us' => 'pages#contact_us'


  get  'branch1'  => 'branches#branch_1'
  get  'branch2'  => 'branches#branch_2'
  get  'branch3'  => 'branches#branch_3'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'welcome#index'

  resources :students

  resources :documents

  namespace :admin do
      resources :trainees
  end


end
