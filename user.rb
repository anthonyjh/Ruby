require 'json'

class User
   
   attr_accessor :email, :name, :permissions
   
   
   def self.permissions_from_template
      
      file = File.read 'user_permissions_template.json'
      
      #create JSON object of what is read in
      JSON.load(file, nil, symbolize_name: true)
      
   end
   
   def save
      
      self_json = {email: @email, name: @name, permissions: @permissions}.to_json
      
      open('users.json', 'a') do |file|
         file.puts self_json
      end
      
   end
   
   
   # initialize
   def initialize (*args)  # takes in args as they arrive and create array
      
      @email = args[0]
      @name = args[1]
      @permissions = User.permissions_from_template
      
   end
   
end