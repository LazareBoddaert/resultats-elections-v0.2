Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :nations, only: %i[index show create]
      resources :regions, only: %i[index show create]
      resources :departements, only: %i[index show create]
      resources :communes, only: %i[index show create]
      resources :scrutins, only: %i[index show create]
      resources :candidats, only: %i[index show create]
      resources :formation_politiques, only: %i[index show create]
      resources :courant_politiques, only: %i[index show create]
      resources :resultat_communes, only: %i[index show create]
      resources :resultat_candidats, only: %i[index show create]
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
