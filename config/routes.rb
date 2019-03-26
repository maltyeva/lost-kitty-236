Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # VERB '/path', to: "controller#action"
  # get '/pets', to: "pets#index"
  # get '/pets/:id', to: "pets#show"

  # #create
  # get '/pets/new', to: "pets#new"
  # post '/pets/', to: "pets#create"

  # #update
  # get '/pets/:id/edit', to: "pets#edit"
  # patch '/pets/:id', to: "pets#update"

  # #delete
  # delete '/pets/:id', to: "pets#destroy"

  resources :pets
  # get '/', to: "pets#index"

  root to: "pets#index"
end
