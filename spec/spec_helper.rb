ENV["RAILS_ENV"] = 'test'

Dir["#{File.dirname(__FILE__)}/../lib/**/*.rb"].each {|f| require f}
