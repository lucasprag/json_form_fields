module JsonFormFields
  class Generator
    def self.generate_inputs(json)
      json = JSON.parse(json)
      str = ''
      json.keys.each do |key|
        if json[key].kind_of?(Array)
          str += "<select id=\"#{JsonFormFields::STYLE_CLASS}#{key}\" class=\"#{JsonFormFields::STYLE_CLASS}\">"
          json[key].each do |option|
            str += "<option value=\"#{option}\">#{option}</option>"
          end
          str += "</select>"
        elsif /password.*/ === key
          str += "<input type=\"password\" id=\"#{JsonFormFields::STYLE_CLASS}#{key}\" class=\"#{JsonFormFields::STYLE_CLASS}\">"
        elsif /email.*/  === key
          str += "<input type=\"email\" id=\"#{JsonFormFields::STYLE_CLASS}#{key}\" class=\"#{JsonFormFields::STYLE_CLASS}\">"
        else
          str += "<input type=\"text\" id=\"#{JsonFormFields::STYLE_CLASS}#{key}\" class=\"#{JsonFormFields::STYLE_CLASS}\">"
        end
      end
      str
    end
  end
end
