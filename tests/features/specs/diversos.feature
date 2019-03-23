# language: en

@diversos
Feature: Performing various tests
    -As a QA Automator, I want to run several exploratory tests

Scenario: click on button 'Clique Me!'
Given that I am in training form form
Given that I click on button 'Clique Me!'
Then I get the answers "Obrigado"

Scenario: click on popup 'Abrir Popup'
Given that I am in training form form
Given that I click on popup 'Abrir Popup'
Then a pop-up window opens

Scenario: click on button Alert
Given that I am in training form form
Given that I click on button alert 'Alert'
Then a simple alert is displayed

Scenario: click on button Prompt
Given that I am in training form form
Given that I click on button 'Prompt'
And I type a number in the prompt
Then the page displays the number I entered

