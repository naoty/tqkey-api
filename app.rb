require "sinatra"
require "./database"

get "/" do
  "Hello, world!"
end

get "/users" do
  users = User.all
  users.to_json
end

post "/users" do
  user = User.new(params[:user])
  if user.save
    user.to_json
  else
    411
  end
end

