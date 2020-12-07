require 'capybara/cucumber'
require 'selenium-webdriver' 

Capybara.configure do |config|
    #selenium -> firefox
    #selenium_chrome -> chrome
    #selenium_chrome_healess -> chrome sem gpu (usado qdo é executado no jenkis, por ex)

    #browser padrão
    config.default_driver = :selenium_chrome

    #url padrão
    config.app_host = 'https://automacaocombatista.herokuapp.com'

    #tempo default para elementos | em segundos
    config.default_max_wait_time = 5 

end