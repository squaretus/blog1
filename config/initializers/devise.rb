# frozen_string_literal: true
Devise.setup do |config|
  # config.secret_key = 'b499be99ef2f0f2c854a8cf333f81bef0e7ee1f7c5dc6860caebbb08dfbc25d38d5ea337d5ad4c932a9b34673238dddea84c79b87354527cbdcae598b747bb9a'
  # ==> Controller configuration
  # Configure the parent class to the devise controllers.
  # config.parent_controller = 'DeviseController'

  # ==> Mailer Configuration
  # Configure the e-mail address which will be shown in Devise::Mailer,
  # note that it will be overwritten if you use your own mailer class
  # with default "from" parameter.
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
  # Configure the class responsible to send e-mails.
  # config.mailer = 'Devise::Mailer'

  # Configure the parent class responsible to send e-mails.
  # config.parent_mailer = 'ActionMailer::Base'

  # ==> ORM configuration
  # Load and configure the ORM. Supports :active_record (default) and
  # :mongoid (bson_ext recommended) by default. Other ORMs may be
  # available as additional gems.
  require 'devise/orm/active_record'
  # config.authentication_keys = [:email]
  # config.request_keys = []
  config.case_insensitive_keys = [:email]

  config.strip_whitespace_keys = [:email]
  # config.params_authenticatable = true
  # :database      = Support basic authentication with authentication key + password
  # config.http_authenticatable = false
  # config.http_authenticatable_on_xhr = true
  # config.http_authentication_realm = 'Application'
  # config.paranoid = true
  config.skip_session_storage = [:http_auth]
  # config.clean_up_csrf_token_on_authentication = true
  # config.reload_routes = true
  config.stretches = Rails.env.test? ? 1 : 12
  # config.pepper = 'f2128b589d6e50cf062141b8285d565b6e1d12ab3ff6870cef11c40482968d6086656c5c49cf15c01d40a5deb9d5a7bd0d718234005e5f039056f85ffa6b6cd2'
  # config.send_email_changed_notification = false
  # config.send_password_change_notification = false
  # config.allow_unconfirmed_access_for = 2.days
  # config.confirm_within = 3.days
  # config.confirmation_keys = [:email]
  config.reconfirmable = true
  # config.remember_for = 2.weeks
  config.expire_all_remember_me_on_sign_out = true
  # config.extend_remember_period = false
  # config.rememberable_options = {}
  config.password_length = 6..128

  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  # config.timeout_in = 30.minutes
  # config.lock_strategy = :failed_attempts
  # config.unlock_keys = [:email]
  # config.unlock_strategy = :both
  # config.maximum_attempts = 20
  # config.unlock_in = 1.hour
  # config.last_attempt_warning = true
  # config.reset_password_keys = [:email]
  config.reset_password_within = 6.hours
  # config.sign_in_after_reset_password = true
  # config.encryptor = :sha512
  # config.scoped_views = false
  # config.default_scope = :user
  # config.sign_out_all_scopes = true
  # config.navigational_formats = ['*/*', :html]
  config.sign_out_via = :get
  # ==> OmniAuth
  # Add a new OmniAuth provider. Check the wiki for more information on setting
  # up on your models and hooks.
  # config.omniauth :github, 'APP_ID', 'APP_SECRET', scope: 'user,public_repo'

  # ==> Warden configuration
  # If you want to use other strategies, that are not supported by Devise, or
  # change the failure app, you can configure them inside the config.warden block.
  #
  # config.warden do |manager|
  #   manager.intercept_401 = false
  #   manager.default_strategies(scope: :user).unshift :some_external_strategy
  # end

  # ==> Mountable engine configurations
  # When using Devise inside an engine, let's call it `MyEngine`, and this engine
  # is mountable, there are some extra configurations to be taken into account.
  # The following options are available, assuming the engine is mounted as:
  #
  #     mount MyEngine, at: '/my_engine'
  #
  # The router that invoked `devise_for`, in the example above, would be:
  # config.router_name = :my_engine
  #
  # When using OmniAuth, Devise cannot automatically set OmniAuth path,
  # so you need to do it manually. For the users scope, it would be:
  # config.omniauth_path_prefix = '/my_engine/users/auth'

  # ==> Turbolinks configuration
  # If your app is using Turbolinks, Turbolinks::Controller needs to be included to make redirection work correctly:
  #
  # ActiveSupport.on_load(:devise_failure_app) do
  #   include Turbolinks::Controller
  # end

  # ==> Configuration for :registerable

  # When set to false, does not sign a user in automatically after their password is
  # changed. Defaults to true, so a user is signed in automatically after changing a password.
  # config.sign_in_after_change_password = true
end
