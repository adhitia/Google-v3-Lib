# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_googlelib_session',
  :secret      => 'e738c9bc3e8dece34632ba28668a80e9b0b42c726f7fcf7b0c0925819d24e5948e5320e3c0ce06dbcc8982a1f41200aec582355459ab429378797225a9bbe059'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
