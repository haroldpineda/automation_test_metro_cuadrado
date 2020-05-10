require 'byebug'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'dotenv'
require 'rspec/expectations'
require 'selenium-webdriver'
require 'site_prism'
require 'yaml'

# Page Object Classes
require_relative '../pages/home/homepage'

World(RSpec::Matchers)
Dotenv.load
