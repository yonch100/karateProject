Feature: get list resources

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

  Scenario: get list resources
    Given path '/unknown'
    When method GET
    Then status 200
    And print response
    And match $.data[0].id == 1
    And match $.data[1].name == "fuchsia rose"
