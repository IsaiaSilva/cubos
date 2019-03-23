Given("that I am in training form form") do
    diversos.load
end

Given("that I click on button {string}") do |string|
    diversos.clique
end
    
Then("I get the answers {string}") do |string|
    #Verifica a palavra 'Obrigado' -> após o click
    @obrigado = find_field("buttonSimple").value
    expect(@obrigado).to eql 'Obrigado!' 
end

#####################################################

Given("that I click on popup {string}") do |string|
    diversos.open_popup
end
  
  Then("a pop-up window opens") do
    #Não foi necessário validaçao - apenas abrir a janela windows
    diversos.scrool_down
end
  
#####################################################

Given("that I click on button alert {string}") do |string|    
    sleep 2
    diversos.scrool_down
    diversos.alerta
end

Then("a simple alert is displayed") do
    alert = page.driver.browser.switch_to.alert.text
    #puts alert
    expect(alert).to  eql 'Alert Simples'
    sleep 2
    page.driver.browser.switch_to.alert.dismiss
 end

#####################################################

Given("I type a number in the prompt") do
    diversos.scrool_down
    diversos.prompt_button
end

Then("the page displays the number I entered") do
   # driver.switchTo().alert().sendKeys("Text");
    page.driver.browser.switch_to.alert.send_keys('555')
    alert = page.driver.browser.switch_to.alert.accept
end