# "INDEX", part of "R" in CRUD
get '/' do
  redirect to("/games")
end

get '/game/:id' do
  @game = Game.find(params[:id])
  erb :show
end

get '/games' do
  @games = Game.all.to_a
  erb :index
end

