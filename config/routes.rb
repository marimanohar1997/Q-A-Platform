Rails.application.routes.draw do
  get 'home/index'
  resources :answers
  resources :questions
  devise_for :users
  resources :answers, :except => [:index, :show]
  root 'home#index'
  resources :users
  get 'users/new'
#  get '*path' => redirect('/')

end
