# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_dui_session',
  :secret      => 'ddbbb8faefad0608a5b75024a5269ed92479d6be7767c6e4f5c7367bdc6cab8ad7820741578ea0463267a49aaf3a166bc23c554e7f4c0a823c8258cbd72336a4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
