Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

  resources :users do
    resources :my_classes
  end

  resources :my_classes do
    resources :students, shallow: true
  end

  resources :students do
    resources :grades, shallow: true
    resources :absences, shallow: true
  end

  get 'about', to: 'pages#about'
  get 'sign_up', to: 'pages#sign_up'
  get 'manage', to: 'pages#manage'

end
