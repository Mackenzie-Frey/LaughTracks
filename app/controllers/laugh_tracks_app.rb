class LaughTracksApp < Sinatra::Base
  # what does the below do?
  set :root, File.expand_path("..", __dir__)

  get ('/comedians') do
    erb :'comedians/index'
  end

end
