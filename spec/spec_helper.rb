require 'codeclimate-test-reporter'
require 'capybara/rspec'
require 'capybara/poltergeist'
require 'database_cleaner'

CodeClimate::TestReporter.start

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  Capybara.javascript_driver = :poltergeist
  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(app, js_errors: true)
  end
  Capybara.register_server :puma do |app, port, host|
    require 'puma'
    Puma::Server.new(app).tap do |s|
      s.add_tcp_listener host, port
    end.run.join
  end

  config.before :suite do
    DatabaseCleaner.strategy = :truncation
  end

  config.before :all do
    DatabaseCleaner.start
  end

  config.after :all do
    DatabaseCleaner.clean
  end
end

