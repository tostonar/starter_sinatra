class ApplicationController < Sinatra::Base
  set :views, "app/views"
  set :method_override, true

  get "/" do
    erb :index
  end

  get "/about" do
    erb :about
  end
end
