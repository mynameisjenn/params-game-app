Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
  get '/name_query' => 'names#show_name'
  get '/a_name' => 'names#a_name'
  get '/string_guessing' => 'names#string_guessing'
  get '/url_segment_guessing/:guess' => 'names#guess_wildcard'
  post '/body_params' => ''
  end
end
