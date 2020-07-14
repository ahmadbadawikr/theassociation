Rails.application.routes.draw do
  root "players#index"
  get "players" => "players#index"
  get "players/new" => "players#new"
  post "players" => "players#create"
  get "players/:id" => "players#show"
  get "players/:id/edit" => "players#edit"
  patch "players/:id" => "players#update"
  delete "players/:id" => "players#destroy"
end
