if Rails.env === 'production' 
  Rails.application.config.session_store :cookie_store, key: '_kicks-api', domain: 'kicks-api'
else
  Rails.application.config.session_store :cookie_store, key: '_kicks-api'
end