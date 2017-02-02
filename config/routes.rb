Rails.application.routes.draw do

  devise_for :users

  root to: 'roasts#index'

  resources :roasts do
    resources :brew do
    end
  end


end
