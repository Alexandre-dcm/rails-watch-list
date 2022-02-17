Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: [:create, :new, :show] do
    resources :bookmarks, only: [:create, :new, :destroy]
  end
end
