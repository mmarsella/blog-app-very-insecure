require 'selenium-webdriver'
require 'pry'


def brute(key)
    driver = Selenium::WebDriver.for :firefox

    driver.navigate.to "http://localhost:3000/"
    email_el = driver.find_element(:id, "email")
    password_el = driver.find_element(:id, "password")

    email_el.send_keys("admin@testing.com")

    # this is where we test the password
    password_el.send_keys(key)

    login = driver.find_element(:id, "login")
    login.click
  begin
    if driver.find_element(:id, "login")
      puts "failure"
      brute(attackArr[index+1])
    end
  rescue Selenium::WebDriver::Error::NoSuchElementError
    puts "success!!"
    puts key
  end
end


attackArr = []
alph = ('a'..'z').to_a

attackArr = alph.map do |val|
  alph.map do |otherVal|
    val + otherVal
  end
end

attackArr = attackArr.flatten

brute(attackArr[0])


