require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module NeoBot
  class Application < Rails::Application
    config.load_defaults 5.2
    config.generators.template_engine = :slim
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
    config.i18n.default_locale = :ja
    config.action_view.field_error_proc = Proc.new do |html_tag, instance|
      %Q(#{html_tag}).html_safe
    end
    config.generators do |g|
      g.assets false
      g.helper false
      g.jbuilder false
    end
    # config.generators.javascript_engine = :js
  end
end
