class ParamsController < ApplicationController
  def query_params
    input_value = params["my_name"]
    render json: { message: "My name is #{input_value.upcase}" }
  end
end
