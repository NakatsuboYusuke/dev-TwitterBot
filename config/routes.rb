Rails.application.routes.draw do
  resources :tweets, only: [:new, :create] do
    collection do
      get 'post'
    end
  end
  root to: 'tweets#new'
end
