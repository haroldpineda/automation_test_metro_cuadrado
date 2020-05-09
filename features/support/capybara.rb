# frozen_string_literal: true

Before do |scenario|
  @tags = scenario.source_tag_names
  #select broser for test cases
  case ENV['BROWSER']
  when 'firefox'
    BROWSER ||= :firefox
    Capybara.register_driver :selenium do |app|
      Capybara::Selenium::Driver.new(app, browser: :firefox)
    end
    Capybara.default_driver = :selenium
    Capybara.default_max_wait_time = 10
    Capybara.page.driver.browser.manage.window.resize_to(1400, 1050)
  when 'chrome'
    BROWSER ||= :chrome
    Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, browser: :chrome, clear_local_storage: true, clear_session_storage: true)
    end
    Capybara.default_driver = BROWSER
    Capybara.default_max_wait_time = 10
    Capybara.page.driver.browser.manage.window.resize_to(1400, 1050)
  end
end
