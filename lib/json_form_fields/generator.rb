module JsonFormFields
  class Generator
    def self.generate_inputs(json)
      json = JSON.parse(json)
      fields = ''
      json['template'] ||= "<div>yield</div>"
      json.keys.each do |key|
        next if key == 'template'
        str = "<label>#{key.gsub('_', ' ').capitalize}</label>"
        if json[key].kind_of?(Array)
          multiple = false

          if json[key].delete "_multiple"
            multiple = true
          end

          if json[key].delete "_checkbox"
            json[key].each do |value|
              name = multiple ? "#{key}[]" : "#{key}"
              str += "<input id=\"#{key}\" type=\"checkbox\" name=\"#{name}\" "\
              "value=\"#{value}\" />#{value}"
            end
          elsif json[key].delete "_radio"
            if json[key].delete "_boolean"
              str += "<input id=\"#{key}\" type=\"hidden\" name=\"#{key}\" value=\"0\" /><input id=\"#{key}\" type=\"radio\" name=\"#{key}\" value=\"1\" />"
            else
              json[key].each do |value|
                str += "<input id=\"#{key}\" type=\"radio\" name=\"#{key}\" value=\"#{value}\" />#{value}"
              end
            end
          else
            str += "<select name=\"#{key}\" " + (multiple ? "multiple " : "") +
            "id=\"#{key}\">"
            json[key].each do |option|
              str += "<option value=\"#{option}\">#{option}</option>"
            end
            str += "</select>"
          end

        elsif /password.*/ === key
          str += "<input name=\"#{key}\" type=\"password\" id=\"#{key}\" />"
        elsif /email.*/  === key
          str += "<input name=\"#{key}\" type=\"email\" id=\"#{key}\" value=\"#{json[key]}\" />"
        else
          str += "<input name=\"#{key}\" type=\"text\" id=\"#{key}\" value=\"#{json[key]}\" />"
        end
        str = "%s" % json['template'].gsub("yield", str)
        fields += str
      end
      fields
    end
  end
end
