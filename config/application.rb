require_relative "boot"
require "rails/all"


Bundler.require(*Rails.groups)

module TechlogApp
  class Application < Rails::Application
    config.load_defaults 7.2
    config.autoload_lib(ignore: %w[assets tasks])

    config.generators do |g|
      g.assets false          # CSS, JavaScriptファイルを自動生成しない
      g.helper     false      # helperファイルを自動生成しない
  end
end
