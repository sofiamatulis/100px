class User < ApplicationRecord
    def self.from_omniauth(auth_hash)
     user = find_or_create_by(uid: auth_hash['uid'], provider: auth_hash['provider'])
     user.name = auth_hash['info']['name']
     user.token = auth_hash['credentials']['token']
     user.secret = auth_hash['credentials']['token_secret']
     user.save!
     user
    end
end

#find_or_create_by makes sure that the user is not created many times
#the method stores all the required data, saves the user, and returns it.

#self to be able to access this in the sessions controller (class method)

# after the app gets the user info, I have a class method find_by that checks User model for info,
# if the user exists, I login through that existing one, if not create a new user in the database
