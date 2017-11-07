require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec/expectations'
require 'capybara/dsl'

Capybara.configure do |config|
  config.run_server = false
end

Capybara.default_driver = :selenium

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end