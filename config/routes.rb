Rails.application.routes.draw do
  root "home#index"

  namespace :api do
    resources :audio_segments, only: %i[index] do
      get 'summary', on: :collection
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
