Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :dragons, only: %i[index show new create] do
    resources :dragon_ridings, only: %i[new create edit update]
  end
end
