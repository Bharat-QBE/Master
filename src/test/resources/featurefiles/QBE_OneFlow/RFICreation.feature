#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
Feature: Create RFI

  @tag2
  Scenario Outline: Verify Create RFI
    Given Open the browser and navigate to the url
    When I enter valid username  "<username>" and "<password>" click on Login button
    Then Login should be successfully completed
    Then Open a case
    Then Click on Actions drop down
    When Select Create RFI option from drop down
    Then Click on Reason codes drop down
    Then Verify the drop down has all expected values
    Then Select a "<reasoncode_one>" from reason codes drop down
    When Click on Create button
    Then Click on Submit button
    When Click on Transaction request hyperlink to navigate to parent case
    Then Click on Actions drop down
    When Select Create RFI option from drop down
    Then Verify Create RFI screen is displayed
    Then Click on Reason codes drop down
    Then Select a "<reasoncode_two>" from reason codes drop down
    When Click on Create button
    Then Verify Create New RFI screen is displayed
    Then Click on Submit button
    Then Verify that multiple RFI can be created

    Examples: 
      | username | password  | reasoncode_one | reasoncode_two | 
      | MVAUser2 | OF@123456 | Authority Code | Insured name   |
