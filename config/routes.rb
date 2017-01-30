Rails.application.routes.draw do
  devise_for :users

  root to: 'roast#index'

  resources :roast do
    resources :brew do
    end
  end


end
