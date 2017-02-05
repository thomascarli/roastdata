Rails.application.routes.draw do

  devise_for :users

  root to: 'roasts#index'

  resources :roasts do
    resources :brews do
    end
  end

  resources :users do
  end


end
