if Rails.env.development? || Rails.env.test?
  Tunecore::Application.config.secret_token = 'x' * 30
else
  Tunecore::Application.config.secret_token = ENV['SECRET_TOKEN']
end
