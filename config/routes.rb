Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'roast#index'

  resources :roast do
    resources :brew do
    end
  end

end
