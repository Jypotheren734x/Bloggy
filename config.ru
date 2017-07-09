# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'
ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://egxuymljkrmkde:2ae62d8dd5520103286b31a5955ef12f576f235adf4588091dd72a7f04b34905@ec2-107-22-162-158.compute-1.amazonaws.com:5432/dffe37v92mjfrd')

run Rails.application
