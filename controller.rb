require 'sinatra'
require 'pry-byebug'
require 'sinatra/contrib/all' if development?
require 'json'

require './models/rock_paper_scissors'


# rock / paper / scissors

get '/' do
  erb( :welcome )
end

get '/rock' do
  erb( :rock )
end

get '/paper' do
  erb( :paper )
end

get '/scissors' do
  erb( :scissors )
end

get '/:hand1/:hand2' do
  hand1 = params[:hand1]
  hand2 = params[:hand2]
  # create new instance of RockPaperScissors and set result variable
  game = RockPaperScissors.new()
  result = game.check_win(hand1, hand2)
  # evaluate if the return
  if result == "draw"
    @draw_choice = params[:hand1]
    # return draw
    erb( :draw )
  else
    @winner = result['player']
    @winning_choice = result['choice']
    # return the winner of the game
    erb( :result )
  end

end
