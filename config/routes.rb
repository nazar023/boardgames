Rails.application.routes.draw do
  devise_for :users
  resources :participants
  resources :games

  get '/games/:id/new_participant', to: 'participants#new', as: :game_new_participant

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: redirect('games')
  # Defines the root path route ("/")
  # root "articles#index"

devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
end

end
