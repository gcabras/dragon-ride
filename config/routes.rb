Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :dragons, only: %i[index show new create edit update destroy] do
    resources :claims, only: %i[new create edit update]
  end
end
