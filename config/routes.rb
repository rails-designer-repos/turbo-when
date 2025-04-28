Rails.application.routes.draw do
  root to: "posts#show"

  resources :posts, only: [] do
    resources :likes, only: [:create, :destroy]
  end
end
