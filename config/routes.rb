Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :wines, only: [:index, :show, :new, :create] do
    resources :gifts, only: [:create]
    resources :ratings, only: [:create]
  end

  resources :ratings, only: [:destroy]
  resources :gifts, only: [:destroy]

  resources :users, only: [] do
    collection do
      get :cave
    end
  end
end
