class ParamsController < ApplicationController
  def query_params
    input_value = params["my_message"]
    render json: { my_message: "The message is #{input_value}" }
  end

  def name
    input_name = params["query_name"]
    output_message = input_name.upcase
    if input_name.upcase[0] == "A"
      output_message = "Hey!  Your name starts with the first letter of the alphabet!"
    end
    render json: { message: output_message }
  end

  def guess
    winning_number = 32
    input_guess = params["user_guess"].to_i
    if input_guess > winning_number
      output_message = "Pick lower!"
    elsif input_guess < winning_number
      output_message = "Pick higher!"
    else
      output_message = "You win!!!"
    end
  end
end
