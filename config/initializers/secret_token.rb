# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token
    File.read(token_file).chomp
  else
    #Generate a new token and store it in token_file
    token=SecureRandom.hex(64)
    File.write(token_file,token)
    token_file
  end
end





SampleApp2::Application.config.secret_key_base = '80552a4c72273140f47604dc8e92aa5664eab0923c98c5e0f1d6e67e90a5b23ed790621b3862ad909decda736fa73bb3d346eb23636960a191c545a0e945c899'
