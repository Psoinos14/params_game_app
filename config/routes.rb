Rails.application.routes.draw do
  namespace :api do
    get '/pillow' => 'paramerino#query'
  end
end