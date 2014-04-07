OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  #TODO: Move app secret into ENV var
  provider :facebook, '332511066900720', 'APP SECRET'
end
