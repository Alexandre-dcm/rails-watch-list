Rails.application.routes.draw do
  resources :lists, only: [:create, :new, :index, :show] do
    resources :bookmarks, only: [:index, :create, :new, :destroy]
  end
end
