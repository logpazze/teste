require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'allure-cucumber'

AllureRubyAdaptorApi.configure do |c|
    c.output_dir = "/log/reports"
  end

AllureCucumber.configure do |c|
    c.output_dir = "/log/reports"
 end

 include AllureCucumber::DSL

 AllureCucumber.configure do |c|
    c.clean_dir  = true
  end

Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = 'http://10.234.128.26'
end

# Capybara.register_driver :selenium do |app|
#     Capybara::Selenium::Driver.new(app, :browser => :chrome)
#   end end end

Capybara.default_max_wait_time = 5