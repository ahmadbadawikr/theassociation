Rails.application.routes.draw do
  get "players" => "players#index"
  get "players/new" => "players#new"
  post "players" => "players#create"
  get "players/:id" => "players#show"
end
