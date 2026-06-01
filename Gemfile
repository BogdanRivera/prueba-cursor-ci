ruby "3.1.6"
source "https://rubygems.org"

# Alphabetical please!
gem "active_model_serializers", "~> 0.10.12"
gem "activerecord-import"
gem "acts_as_tree" # Broken window depends on this gem.
gem "airbrake"
gem "awrence" # Camelize keys for JSON
gem "aws-sdk-lambda"
gem "aws-sdk-mediaconvert"
gem "aws-sdk-s3", "~> 1" # Active Storage dependency
gem "aws-sdk-transcribeservice" # Audio transcriptions
gem "browser"
gem "bootsnap", "1.9.2", require: false
gem "caxlsx"
gem "caxlsx_rails"
gem "capybara", "~> 3.39.2"
gem "chronic"
gem "clockwork" # Execute tasks at scheduled times.
gem "cloudinary", "~> 1.25.0"
gem "concurrent-ruby", "< 1.3.5"
gem "devise"
gem "devise_invitable"
gem "doorkeeper", "~> 5.2"
gem "font-awesome-rails", "~> 4.7.0.6"
gem "googleauth"
gem "graphql"
gem "graphql-activerecord", git: "https://github.com/goco-inc/graphql-activerecord.git", ref: "823404d1a0f8fbb5ee1f647347a0935d634e9d27"
gem "graphql-client", "0.18.0" # This version allows to define queries outside of Constants
gem "httparty"
gem "hubspot-api-client"
gem "intercom-rails"
# jaro_winkler is a dependency of solargraph, which we expect to remove when we
# clean up our GraphQL code. flagging this for removal at that time.
gem "jaro_winkler", "1.5.5"
gem "jbuilder"
gem "jquery-rails"
gem "jwt", "~> 2.1"
gem "kaminari"
gem "koala" # Facebook API for listing search & video uploading
gem "MailchimpTransactional", "~> 1.0.6"
gem "mandrill-rails"
gem "mechanize"
gem "mini_magick" # Review Generation signatures
gem "net-imap", require: false # Travis CI crashes without this
gem "net-pop", require: false # Travis CI crashes without this
gem "net-smtp", require: false # Ruby 3.1.6 - Rails server crashes without this
gem "nested_form"
gem "nio4r", "~> 2.5.9"
gem "noticed"
gem "pg", "~> 1.1"
gem "pg_search"
gem "phony_rails"
gem "psych", "< 4" # Ruby 3.1.6 - Webpacker client crashes without this
gem "puma"
gem "pundit", "~> 2.1" # Authorization
gem "rqrcode", "~> 2.0" # For listings
gem "rack-attack"
gem "rails", "6.1.4"
gem "rails_admin"
gem "rake"
gem "redcarpet" # Needed for showing Documentation Page
gem "restforce"
gem "ruby-progressbar"
gem "s3"
gem "sassc-rails"
gem "sidekiq", "~> 5.2"
gem "sidekiq-limit_fetch" # For limiting thread unsafe jobs to one per process.
gem "sidekiq-unique-jobs"
gem "skylight" # Performance monitoring
gem "slack-ruby-client"
gem "slim"
gem "smarter_csv"
gem "sprockets", "~> 3.7.2" # not direct dependency, security update
gem "terser"
gem "text" # White similarity, etc. Used for listing search.
gem "turbo-rails", "1.3.0"
gem "twilio-ruby" # SMS messaging
gem "video_info" # Attaching videos to surveys.
gem "webdrivers"
gem "webpacker", "~> 3.5"
gem "webpacker-react", "~> 0.3.2"
gem "whois"
gem "yt" # Video uploading
gem "zaru" # Sanitizing file names.

gem "broken_window", "~>1.2.8", git: "https://github.com/webpunch/broken_window"

group :development do
  gem "better_errors"
  gem "binding_of_caller"
  gem "html2slim", "~> 0.2.0", git: "https://github.com/slim-template/html2slim.git"
  gem "foreman"
  gem "graphiql-rails"
  gem "letter_opener"
  gem "rack-mini-profiler"
  gem "rails-erd", require: false
end

gem "faker", groups: [:development, :test, :staging]

group :development, :test do
  gem "awesome_print"
  gem "bullet"
  gem "dotenv-rails"
  gem "parallel_tests"
  gem "pry-byebug"
  gem "pry-rails"
  gem "rspec-rails"
  gem "rubocop", "1.22.3", require: false
  gem "rubocop-rails", "2.9.1", require: false
  gem "rubocop-rake", require: false
  gem "rubocop-rspec", require: false
  gem "shoulda-matchers"
  gem "slim_lint", require: false
  gem "solargraph"
  gem "spring"
  gem "spring-commands-rspec"
  gem "vcr", require: false
  gem "webmock", require: false

  # Not used directly. Added here to force 1.0 beta to
  # not see this warning all the time: https://github.com/liufengyun/hashdiff/issues/45
  gem "hashdiff", [">= 1.0.0.beta1", "< 2.0.0"], require: false
end

group :test do
  gem "clockwork-test"
  gem "database_cleaner"
  gem "email_spec"
  gem "factory_bot_rails"
  gem "launchy"
  gem "percy-capybara"
  gem "rails-controller-testing"
  gem "rspec-benchmark"
  gem "rspec-retry"
  gem "timecop"
  gem "clipboard"
end

# for cache
gem "redis"
gem "connection_pool"
