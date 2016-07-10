class ParamsController < ApplicationController
  def query_params
    @message = params[:my_message_man]
    @another_message = params[:my_other_message]
    render 'query.html.erb'
  end

  def url_params
    @message = params["my_message"]
    render 'url.html.erb'
  end

  def form_params_show
    render 'form_show.html.erb'
  end

  def form_params_result
    @message = params["form_message"]
    render 'form_result.html.erb'
  end

  def game
    @user_name = params["name"]
    winning_number = 32
    user_guess = params["guess"].to_i
    if user_guess > winning_number
      @game_message = "WRONG! Try something lower..."
    elsif user_guess < winning_number
      @game_message = "WRONG! Try something higher..."
    else
      @game_message = "You win!"
    end
    render 'game.html.erb'
  end
end
