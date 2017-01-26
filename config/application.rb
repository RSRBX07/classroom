require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Classroom
  class Application < Rails::Application
    config.generators do |g|
      # .. other configuration ..
      g.javascript_engine :js
      end
  end
end