Rails.application.routes.draw do
  namespace :api do
    get '/pillow' => 'paramerino#query'
    get 'segment_url/:name' => 'paramerino#url_segment_method'
    get 'segment_url_2/:guess' => 'paramerino#url_segment_number_guess'
  end
end