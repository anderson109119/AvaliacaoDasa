require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rake'
require 'selenium-webdriver'
require 'pry'
require 'site_prism'
require 'capybara/rspec'
require 'fileutils'
require 'faker'

Capybara.register_driver :selenium do |app|  
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
  #Capybara::Selenium::Driver.new(app, :browser => :firefox)  
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 60

Capybara.page.driver.browser.manage.window.maximize