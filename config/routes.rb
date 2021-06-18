Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/query_params" => "params#query_params"
  get "/name" => "params#name"
  get "/guess/:user_guess" => "params#guess"
  get "/segment_params/:this_is_a_key" => "params#segment_params"
  post "/body_params:user_name" => "params#body_params"
  post "/body_params:user_password" => "params#body_params"
end
