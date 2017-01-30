Rails.application.routes.draw do
  devise_for :users

  root to: 'roast#index'

  resources :roast do
  	post 'create'

    resources :brew do
    end
  end


end
