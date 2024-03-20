Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :wines, only: [:index, :show, :new, :create]
  resources :users, only: [] do
    collection do
      get :cave
    end
  end
end
