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
      g.test_framework :rspec, 
        fixtures: false, # テストDBにレコードを作るfixtureの作成をスキップ(FactoryBotを使用するため)
        view_specs: false, # ビューファイル用のスペックを作成しない
        helper_specs: false, # ヘルパーファイル用のスペックを作成しない
        routing_specs: false # routes.rb用のスペックファイル作成しない
    end  # generators 블록 닫음
  end  # Application 클래스 닫음
end  # TechlogApp 모듈 닫음 (추가한 부분!)
