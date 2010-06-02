# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_flickr_session',
  :secret      => '6d6e2b651ef83a2b3b06310b2f0b979b619ddeb0baafbd3ccb8354462e83bc42c2084061a2fed99c69d3650b3e864136d5e2aa044402eede6ff525e41ee02d92'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
