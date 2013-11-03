require "sinatra"
require "sinatra/activerecord"

set :database, ENV["DATABASE_URL"] || "sqlite:///development.db"

class User < ActiveRecord::Base
  validates :name, uniqueness: true
end
