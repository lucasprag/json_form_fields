require "json_form_fields/version"
require 'json'

module JsonFormFields
  STYLE_CLASS = 'json_form_fields_'

  module Rails
    class Engine < ::Rails::Engine
    end
  end
end
