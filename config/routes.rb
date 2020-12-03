Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

  resources :my_classes do
    resources :students
  end
  get 'about', to: 'pages#about'
  get 'sign_up', to: 'pages#sign_up'

end
