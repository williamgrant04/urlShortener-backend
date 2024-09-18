Rails.application.routes.draw do
  post "/create" => "urls#create"
  get "/:identifier" => "urls#show"
end
