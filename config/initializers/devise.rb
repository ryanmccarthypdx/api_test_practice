config.warden do |manager|
  manager.failure_app = CustomAuthFailure
end

config.http_authenticatable = true
config.skip_session_storage = [:http_auth, :token_auth]
