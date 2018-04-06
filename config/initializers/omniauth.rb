OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2,
  ENV['8965533390-pb0b4os1ejeptkjcbnli17c95nke02ci.apps.googleusercontent.com'],
  ENV['9DWjSYfAYLrQHzXM-MfTId9o'],
  {client_option: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}},
   :skip_jwt => true}
end
