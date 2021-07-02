Rails.application.routes.draw do
  root 'users#index'
  get 'users/new' => 'users#index', as: "new_user"
  post 'users' => 'users#login', as: "login"
  get 'logout' => 'users#logout', as: "logout"
  get 'wall' => 'messages#wall', as: "wall"
  post 'wall' => 'messages#create', as: "create_message"
  post 'comments/:id' => 'comments#create', as: "create_comment"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
