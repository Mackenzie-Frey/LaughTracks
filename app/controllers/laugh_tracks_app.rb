class LaughTracksApp < Sinatra::Base
  # what does the below do?
  set :root, File.expand_path("..", __dir__)

  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
      @specials = Special.where(comedian_id: @comedians.ids)
    else
      @comedians = Comedian.all
    end
    erb :'comedians/index'
  end
end
