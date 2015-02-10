module JsonFormFields
  class Generator
    def self.generate_inputs(json)
      json = JSON.parse(json)
      str = ''
      json.keys.each do |key|
        if json[key].kind_of?(Array)
          str += "<select id=\"#{key}\">"
          json[key].each do |option|
            str += "<option value=\"#{option}\">#{option}</option>"
          end
          str += "</select>"
        elsif /password.*/ === key
          str += "<input type=\"password\" id=\"#{key}\">"
        elsif /email.*/  === key
          str += "<input type=\"email\" id=\"#{key}\" value=\"#{json[key]}\">"
        else
          str += "<input type=\"text\" id=\"#{key}\" value=\"#{json[key]}\">"
        end
      end
      str
    end
  end
end
