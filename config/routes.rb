Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :stocks

  get "/api/menu" => "simpleapis#index"
  post "/api/create" => "simpleapis#create"
  post "/api/save" => 'simpleapis#save'

end

