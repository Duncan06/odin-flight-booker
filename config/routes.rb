Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :flights do 
    member do
      get 'search'
    end
  end

  root 'flights#index'
end
