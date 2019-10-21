require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/reversename/:name' do
    @string = params[:name]
    "#{@string.reverse}"
  end


  # This is a sample dynamic route.
  get '/square/:number' do
    @number = (params[:number].to_i * params[:number].to_i)
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @answer = ''
    @phrase = params[:phrase]
    params[:number].to_i.times do
      @answer += @phrase
  end
 @answer
end

  # Code your final two routes here:
  get "/say/:word1/:word2/:word3/:word4/:word5" do

    @sentence = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
  end

  get "/:operation/:number1/:number2" do
    if params[:operation] == "add"
      @answer = (params[:number1].to_i + params[:number2].to_i).to_s
    elsif params[:operation] == "subtract"
      @answer = (params[:number1].to_i - params[:number2].to_i).to_s
    elsif params[:operation] == "multiply"
      @answer = (params[:number1].to_i * params[:number2].to_i).to_s
    elsif params[:operation] == "divide"
      @answer = (params[:number1].to_i / params[:number2].to_i).to_s
    end
  end

end
