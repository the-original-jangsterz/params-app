class ParamsController < ApplicationController
  def query_params
    @message = params[:my_message_man]
    @another_message = params[:my_other_message]
    render 'query.html.erb'
  end
end
