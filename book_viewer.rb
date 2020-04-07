require "tilt/erubis"
require "sinatra"
require "sinatra/reloader"

get "/" do
  @title = 'The Adventures of Sherlock Holmes'
  @contents = File.readlines("data/toc.txt", chomp: true)

  erb :home
end
