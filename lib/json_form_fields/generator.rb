module JsonFormFields
  class Generator
    def self.generate_inputs(json)
      #todo raise error when gets a json blank and so on
      json = JSON.parse(json)
      str = ''
      json.keys.each do |key|
        if json[key].kind_of?(Array)
          str += "<select id=\"#{key}\" name=\"#{key}\">"
          json[key].each do |option|
            str += "<option value=\"#{option}\">#{option}</option>"
          end
          str += "</select>"
        end
      end
      str
    end
  end
end
