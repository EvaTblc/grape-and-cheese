I18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.yml')]
I18n.backend.load_translations
I18n.default_locale = :fr
