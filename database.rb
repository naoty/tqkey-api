require "sinatra"
require "sinatra/activerecord"

set :database, ENV["DATABASE_URL"] || "sqlite:///development.db"

class User < ActiveRecord::Base
  validates :name, uniqueness: true

  before_create do |user|
    user.created_at = Time.now
    user.updated_at = Time.now
  end

  before_update do |user|
    user.created_at ||= Time.now
    user.updated_at = Time.now
  end
end
