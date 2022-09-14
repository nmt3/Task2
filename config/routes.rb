Rails.application.routes.draw do
  get '/top' => 'homes#top'
  resources :books
  get 'books/:id' => 'books#show' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
