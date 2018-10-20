Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#show'
  resources :activities, only: %i[new create] do
    resources :participants, only: %i[] do
      post 'taken' => 'participants#taken'
    end
  end
end
