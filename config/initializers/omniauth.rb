Rails.application.config.middleware.use OmniAuth::Builder do
  provider :stagebloc, ENV['STAGEBLOC_CLIENT_ID'], ENV['STAGEBLOC_SECRET'],
           :parse => :stagebloc_parser
end
