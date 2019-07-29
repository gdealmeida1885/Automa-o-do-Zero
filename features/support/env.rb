# frozen_string_literal: true

require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'faker'

Capybara.configure do |c|
  c.default_driver = :selenium_chrome
  c.default_max_wait_time = 10
  c.app_host = 'http://ninjamotors.herokuapp.com'
end
