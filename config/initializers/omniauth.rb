OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '332511066900720', ENV["FACEBOOK_APP_SECRET"]
end
