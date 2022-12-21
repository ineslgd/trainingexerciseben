Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/instructions", to: "pages#instructions", as: "instructions"
  # root to: "trees#home"
  resources :trees do
    resources :adoptions, only: [ :create, :destroy ]
  end
end
