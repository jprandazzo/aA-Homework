class User < ApplicationRecord
    ensure_session_token
    
    validates :username, :password_digest, presence: true
    validates_presence_of :session_token, :message => "password can't be blank"
    validates_length_of :password, :minimum => 6

    def self.find_by_credentials
        # This method takes in a username and a password and returns the user that matches (or nil if no match)
        # This method should use #is_password? (see below).
    end

    def generate_unique_session_token
        # This method uses SecureRandom::urlsafe_base64 to return a unique 16-digit pseudorandom string
    end

    def password=
        # This method sets @password equal to the argument given so that the appropriate validation can happen
        # This method also encrypts the argument given and saves it as this user's password_digest
        # Remember: you have to add an attr_reader for password for the validation to occur!
    end

    def is_password?
        # This method takes a password and checks it against the password_digest to determine whether or not password is, in fact, the user's password.
    end

    def reset_session_token!
        # This method resets the user's session_token and saves the user
    end

    def ensure_session_token
        # This method makes sure that the user has a session_token set, setting one if none exists
    end
end
