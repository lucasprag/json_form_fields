require 'spec_helper'

describe JsonFormFields do

  let!(:json_select){ {method: ["GET", "POST", "PUT", "DELETE"] }.to_json }
  let!(:input_select){
    "<select id=\"#{JsonFormFields::STYLE_CLASS}method\" class=\"#{JsonFormFields::STYLE_CLASS}\">"\
      "<option value=\"GET\">GET</option>"\
      "<option value=\"POST\">POST</option>"\
      "<option value=\"PUT\">PUT</option>"\
      "<option value=\"DELETE\">DELETE</option>"\
    "</select>"
  }

  let!(:json_password){ { password: "" }.to_json }
  let!(:input_password){ "<input type=\"password\" id=\"#{JsonFormFields::STYLE_CLASS}password\" class=\"#{JsonFormFields::STYLE_CLASS}\">" }

  let!(:json_text){ { url: "" }.to_json }
  let!(:input_text){ "<input type=\"text\" id=\"#{JsonFormFields::STYLE_CLASS}url\" class=\"#{JsonFormFields::STYLE_CLASS}\">" }

  let!(:json_email){ { email: "" }.to_json }
  let!(:input_email){ "<input type=\"email\" id=\"#{JsonFormFields::STYLE_CLASS}email\" class=\"#{JsonFormFields::STYLE_CLASS}\">" }

  context "generates" do
    it "select" do
      expect(JsonFormFields::Generator.generate_inputs(json_select)).to eq(input_select)
    end

    it "password" do
      expect(JsonFormFields::Generator.generate_inputs(json_password)).to eq(input_password)
    end

    it "text" do
      expect(JsonFormFields::Generator.generate_inputs(json_text)).to eq(input_text)
    end

    it "email" do
      expect(JsonFormFields::Generator.generate_inputs(json_email)).to eq(input_email)
    end

  end
end
