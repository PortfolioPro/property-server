Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  scope 'api' do
    resources :buildings, only: [:index] do
      resources :apartments, only: [:index, :show, :update] do
        resources :tenants
      end
    end
  end
end
