Myapp::Application.routes.draw do
  resources :diaries


  authenticated :user do
    root :to => 'home#index'
  end
  devise_scope :user do
  root :to => "devise/sessions#new"
  end
  devise_for :users
  resources :users
end
