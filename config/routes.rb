Rails.application.routes.draw do
  root 'home#index'
  get '/about', to: 'home#about'
  get '/contact', to: 'home#contact'

  resources :users do
    resources :scenarios do
      resources :budgets
    end
    resources :job
  end

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

end
