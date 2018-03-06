require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'httparty'
require 'rspec'

Capybara.configure do |app|
  app.app_host = 'http://marktasks.herokuapp.com'
  app.default_driver = :selenium_chrome
end

Capybara.default_max_wait_time = 60
