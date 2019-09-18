class SongsController < Sinatra::Base
  set :views, "app/views/songs"
  set :method_override, true

  get '/songs/new' do
    erb :new
  end

  post '/songs' do
    @song = Song.create(name: params[:name], artist_id: params[:artist_id], lyrics: params[:lyrics])
    redirect "/songs/#{@song.id}"
  end
  
  get '/songs' do
    @songs = Song.all
    erb :index
  end

  get '/songs/:id' do
    @song = Song.find(params[:id])
    erb :show
  end

  get '/songs/:id/edit' do
    @song = Song.find(params[:id])
    erb :edit
  end

  patch '/songs/:id' do
    # binding.pry
    @song = Song.find(params[:id])
    artist_id = @song.artist.id
    @song.update(name: params[:name], lyrics: params[:lyrics])
    redirect "/songs/#{@song.id}"
  end

  delete '/songs/:id' do
    @song = Song.find(params[:id])
    @song.destroy
    redirect '/songs'
  end
end