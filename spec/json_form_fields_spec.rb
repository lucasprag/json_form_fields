require 'spec_helper'

describe JsonFormFields do

  let!(:json_select){ {method: ["GET", "POST", "PUT", "DELETE"] }.to_json }
  let!(:input_select){
    "<select id=\"method\" name=\"method\">"\
      "<option value=\"GET\">GET</option>"\
      "<option value=\"POST\">POST</option>"\
      "<option value=\"PUT\">PUT</option>"\
      "<option value=\"DELETE\">DELETE</option>"\
    "</select>"
  }

  let!(:json_password){ { password: "" }.to_json }
  let!(:input_password){ "<input type=\"password\" id=\"password\" name=\"password\" />" }

  let!(:json_text){ { url: "" }.to_json }
  let!(:input_text){ "<input type=\"text\" id=\"url\" name=\"url\" />" }

  let!(:json_email){ { email: "" }.to_json }
  let!(:input_email){ "<input type=\"email\" id=\"email\" name=\"email\" />" }

  context "generates" do
    it "select" do
      expect(JsonFormFields::Generator.generate_inputs(json_select)).to eq(input_select)
    end

    it "password" do
      expect(JsonFormFields::Generator.generate_inputs(json_select)).to eq(input_select)
    end

    it "text" do
      expect(JsonFormFields::Generator.generate_inputs(json_select)).to eq(input_select)
    end

    it "email" do
      expect(JsonFormFields::Generator.generate_inputs(json_select)).to eq(input_select)
    end

  end
end