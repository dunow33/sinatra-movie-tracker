require 'bundler/setup'
require 'rack-flash'
Bundler.require(:default, ENV['SINATRA_ENV'])

configure :development do
    set :database, 'sqlite3:db/movies.db'
end

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)

require_all 'app'