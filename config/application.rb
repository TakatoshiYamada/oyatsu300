require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Oyatsu300
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    config.time_zone = "Tokyo"
    config.active_record.default_timezone = :local
    config.eager_load_paths << Rails.root.join("extras")

    # rails g 時のファイル作成の可否を設定
    config.generators do |g|
      g.skip_routes true
      g.assets false
      g.helper false
      g.test_framework false
    end
    # to auto load lib/ directory
    config.autoload_paths += %W(#{config.root}/lib)

    # i18n
    config.i18n.available_locales = %i[ja en]
    config.i18n.default_locale = :ja
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
  end
end
