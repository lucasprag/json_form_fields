# Json Form Fields

This gem generates form inputs from JSON documents.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'json_form_fields'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install json_form_fields

## Usage

```ruby
 JsonFormFields::Generator.generate_inputs({ method: ["GET", "POST"] })
```

Will generate a select with GET and POST options. Works also with
password, email and text inputs.

## Contributing

1. Fork it ( https://github.com/Lucasosf/json_form_fields/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
