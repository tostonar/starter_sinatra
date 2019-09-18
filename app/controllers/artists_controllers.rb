class ArtistsController < Sinatra::Base
  set :views, "app/views/artists"
  set :method_override, true
 
  get '/artists/new' do
    erb :new
  end

  get '/artists' do
    @artists = Artist.all
    erb :index
  end

  get '/artists/:id' do
    @artist = Artist.find(params[:id])
    @artists = Artist.all
    erb :show
  end

  post '/artists' do
    @artist = Artist.create(name: params[:name])
    redirect "/artists/#{@artist.id}"
  end

  
end