require 'rspec'
require 'page-object'
require 'data_magic'
require 'site_prism'
require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require_relative 'pages/site.rb'
require 'correios-cep'
require 'cpf_faker'
require 'pry'

include Capybara::DSL
Capybara.configure do |config|
    config.run_server = false
    config.default_driver = :selenium
#    config.app_host = 'https://www.google.com' # change url

end

Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
	Capybara.current_driver= :selenium
 	config.default_max_wait_time = 3
 	# window = Capybara.current_session.driver.browser.manage.window
 	# window.resize_to(1280, 840)
 	Capybara.page.driver.browser.manage.window.maximize
end
World(PageObject::PageFactory)
