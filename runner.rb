require 'pp'  # pretty print

require_relative 'user'  # use User class that is in relative folder

user = User.new "john.doe@example.com", "Anthony"

pp user

user.save
