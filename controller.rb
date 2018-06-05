require('sinatra')
require('sinatra/contrib/all');
require('pry');
require_relative('./models/game');
also_reload('models/*')

get '/game/:player1/:player2' do
  game = Game.new(params[:player1],params[:player2])
  @result = game.play_game()
  erb(:result)
end

#
get '/rules' do
  erb(:rules)
end
#
get'/play_game' do
  erb(:play_game)
end
