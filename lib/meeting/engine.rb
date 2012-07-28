# CURRENT FILE :: lib/meeting/engine.rb
module Meeting

  class Engine < Rails::Engine

    initialize "meeting.load_app_instance_data" do |app|
      Meeting.setup do |config|
        config.app_root = app.root
      end
    end

    initialize "meeting.load_static_assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end

  end

end
