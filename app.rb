require 'sinatra'

Sinatra::Base.set :port, 8080
Sinatra::Base.set :bind, '0.0.0.0'

Sinatra::Base.get '/some-crazy-api' do
  # make some changes and simple restart your container
  'Some magic code'
end

puts 'Listening on port :8080'
